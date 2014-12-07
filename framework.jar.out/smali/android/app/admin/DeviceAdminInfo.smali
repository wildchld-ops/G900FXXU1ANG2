.class public final Landroid/app/admin/DeviceAdminInfo;
.super Ljava/lang/Object;
.source "DeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "DeviceAdminInfo"

.field public static final USES_ENCRYPTED_STORAGE:I = 0x7

.field public static final USES_POLICY_ALLOW_BLUETOOTH_MODE:I = 0x11

.field public static final USES_POLICY_ALLOW_BROWSER:I = 0xf

.field public static final USES_POLICY_ALLOW_DESKTOP_SYNC:I = 0x12

.field public static final USES_POLICY_ALLOW_INTERNET_SHARING:I = 0x10

.field public static final USES_POLICY_ALLOW_IRDA:I = 0x13

.field public static final USES_POLICY_ALLOW_POPIMAP_EMAIL:I = 0xe

.field public static final USES_POLICY_ALLOW_STORAGE_CARD:I = 0xb

.field public static final USES_POLICY_ALLOW_TEXT_MESSAGING:I = 0xd

.field public static final USES_POLICY_ALLOW_THIRD_PARTY_APP:I = 0x16

.field public static final USES_POLICY_ALLOW_UNSIGNED_APP:I = 0x19

.field public static final USES_POLICY_ALLOW_UNSIGNED_INSTALLATION_PACKAGE:I = 0x1a

.field public static final USES_POLICY_ALLOW_WIFI:I = 0xc

.field public static final USES_POLICY_BLOCK_INROM_APP:I = 0x17

.field public static final USES_POLICY_DISABLE_CAMERA:I = 0x8

.field public static final USES_POLICY_DISABLE_KEYGUARD_FEATURES:I = 0x9

.field public static final USES_POLICY_EAS_FLAGS:I = 0x18

.field public static final USES_POLICY_EDM_BEGIN:I = 0x1b

.field public static final USES_POLICY_EXPIRE_PASSWORD:I = 0x6

.field public static final USES_POLICY_FORCE_LOCK:I = 0x3

.field public static final USES_POLICY_LIMIT_PASSWORD:I = 0x0

.field public static final USES_POLICY_PASSWORD_RECOVERABLE:I = 0xa

.field public static final USES_POLICY_REQUIRE_STORAGECARD_ENCRYPTION:I = 0x14

.field public static final USES_POLICY_RESET_PASSWORD:I = 0x2

.field public static final USES_POLICY_SETS_GLOBAL_PROXY:I = 0x5

.field public static final USES_POLICY_SIMPLE_PASSWORD_ENABLED:I = 0x15

.field public static final USES_POLICY_WATCH_LOGIN:I = 0x1

.field public static final USES_POLICY_WIPE_DATA:I = 0x4

.field static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

.field final mReceiver:Landroid/content/pm/ResolveInfo;

.field mUsesPolicies:J

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x4

    const-string v5, "wipe-data"

    const v6, 0x10404f9

    const v7, 0x10404fa

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x2

    const-string v5, "reset-password"

    const v6, 0x10404f5

    const v7, 0x10404f6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x0

    const-string v5, "limit-password"

    const v6, 0x10404f1

    const v7, 0x10404f2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x1

    const-string v5, "watch-login"

    const v6, 0x10404f3

    const v7, 0x10404f4

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x3

    const-string v5, "force-lock"

    const v6, 0x10404f7

    const v7, 0x10404f8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x5

    const-string v5, "set-global-proxy"

    const v6, 0x10404fb

    const v7, 0x10404fc

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x6

    const-string v5, "expire-password"

    const v6, 0x10404fd

    const v7, 0x10404fe

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/4 v4, 0x7

    const-string v5, "encrypted-storage"

    const v6, 0x10404ff

    const v7, 0x1040500

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x8

    const-string v5, "disable-camera"

    const v6, 0x1040501

    const v7, 0x1040502

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x9

    const-string v5, "disable-keyguard-features"

    const v6, 0x1040505

    const v7, 0x1040506

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x14

    const-string v5, "require-storagecard-encryption"

    const v6, 0x1040527

    const v7, 0x1040528

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xa

    const-string v5, "recover-password"

    const v6, 0x1040503

    const v7, 0x1040504

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xe

    const-string v5, "allow-popimapemail"

    const v6, 0x1040511

    const v7, 0x1040512

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xb

    const-string v5, "allow-storagecard"

    const v6, 0x104050b

    const v7, 0x104050c

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xc

    const-string v5, "allow-wifi"

    const v6, 0x104050d

    const v7, 0x104050e

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xd

    const-string v5, "allow-textmessaging"

    const v6, 0x104050f

    const v7, 0x1040510

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0xf

    const-string v5, "allow-browser"

    const v6, 0x1040515

    const v7, 0x1040516

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x10

    const-string v5, "allow-internetsharing"

    const v6, 0x1040517

    const v7, 0x1040518

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x11

    const-string v5, "allow-bluetoothmode"

    const v6, 0x1040519

    const v7, 0x104051a

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x12

    const-string v5, "allow-desktopsync"

    const v6, 0x104051b

    const v7, 0x104051c

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x13

    const-string v5, "allow-irda"

    const v6, 0x1040513

    const v7, 0x1040514

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x16

    const-string v5, "allow-list-thirdparty"

    const v6, 0x104051d

    const v7, 0x104051e

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x17

    const-string v5, "block-list-InRom"

    const v6, 0x104051f

    const v7, 0x1040520

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x19

    const-string v5, "allow-unsignedapp"

    const v6, 0x1040521

    const v7, 0x1040522

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const/16 v4, 0x1a

    const-string v5, "allow-unsignedinstallationpkg"

    const v6, 0x1040523

    const v7, 0x1040524

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v4, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/app/admin/DeviceAdminInfo$1;

    invoke-direct {v2}, Landroid/app/admin/DeviceAdminInfo$1;-><init>()V

    sput-object v2, Landroid/app/admin/DeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    invoke-virtual {p2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iput-object v3, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    iput-object p2, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {p2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-wide v3, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    const-wide/16 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    iput-wide v3, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    goto :goto_0

    :cond_0
    const-string v3, "DeviceAdminInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag under uses-policies of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v9, 0x0

    :try_start_0
    const-string v17, "android.app.device_admin"

    move-object/from16 v0, v17

    invoke-virtual {v3, v10, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    if-nez v9, :cond_1

    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "No android.app.device_admin meta-data"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v5

    :try_start_1
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to create context for: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v17

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v17

    :cond_1
    :try_start_2
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    :cond_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_3

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    :cond_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v17, "device-admin"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v18, "Meta-data does not start with device-admin tag"

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_4
    sget-object v17, Lcom/android/internal/R$styleable;->DeviceAdmin:[I

    move-object/from16 v0, v17

    invoke-virtual {v12, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    :cond_5
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_a

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v8, :cond_a

    :cond_6
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v17, "uses-policies"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    :cond_7
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_5

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_5

    :cond_8
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v15, v0, :cond_7

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v17, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    shl-long v19, v19, v21

    or-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    goto :goto_0

    :cond_9
    const-string v17, "DeviceAdminInfo"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown tag under uses-policies of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_a
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_b
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Receiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()J
    .locals 2

    iget-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    return-wide v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagForPolicy(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedPolicies()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    sget-object v3, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {p0, v3}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public isProxy()Z
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v2, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_1
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v2
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mProxyAdmin:Landroid/app/admin/ProxyDeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "flags"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    :cond_0
    return-void
.end method

.method public setPermissions(J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesPolicy(I)Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x1b

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "flags"

    iget-wide v2, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
