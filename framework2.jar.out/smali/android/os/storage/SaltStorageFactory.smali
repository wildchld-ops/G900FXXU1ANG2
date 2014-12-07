.class public Landroid/os/storage/SaltStorageFactory;
.super Ljava/lang/Object;
.source "SaltStorageFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDP.SdpSaltStorageFactory"

.field private static _instance:Landroid/os/storage/SaltStorageFactory;


# instance fields
.field public mDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/os/storage/SaltStorageFactory;->_instance:Landroid/os/storage/SaltStorageFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/storage/SaltStorageFactory;->mDeviceType:I

    return-void
.end method

.method public static getInstance()Landroid/os/storage/SaltStorageFactory;
    .locals 1

    sget-object v0, Landroid/os/storage/SaltStorageFactory;->_instance:Landroid/os/storage/SaltStorageFactory;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/storage/SaltStorageFactory;

    invoke-direct {v0}, Landroid/os/storage/SaltStorageFactory;-><init>()V

    sput-object v0, Landroid/os/storage/SaltStorageFactory;->_instance:Landroid/os/storage/SaltStorageFactory;

    :cond_0
    sget-object v0, Landroid/os/storage/SaltStorageFactory;->_instance:Landroid/os/storage/SaltStorageFactory;

    return-object v0
.end method


# virtual methods
.method public createStorage(Landroid/content/Context;II)Landroid/os/storage/SaltStorage;
    .locals 2

    iput p2, p0, Landroid/os/storage/SaltStorageFactory;->mDeviceType:I

    iget v0, p0, Landroid/os/storage/SaltStorageFactory;->mDeviceType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "SDP.SdpSaltStorageFactory"

    const-string v1, "Creating sdp-storage for test device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/storage/LocalFsSaltStorage;

    invoke-direct {v0, p3}, Landroid/os/storage/LocalFsSaltStorage;-><init>(I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "SDP.SdpSaltStorageFactory"

    const-string v1, "Creating sdp-storage for tima enabled device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/storage/TimaSaltStorage;

    invoke-direct {v0, p3}, Landroid/os/storage/TimaSaltStorage;-><init>(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentDeviceId()I
    .locals 1

    iget v0, p0, Landroid/os/storage/SaltStorageFactory;->mDeviceType:I

    return v0
.end method
