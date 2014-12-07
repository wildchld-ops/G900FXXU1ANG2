.class public Landroid/content/pm/SdpProcessInfo;
.super Ljava/lang/Object;
.source "SdpProcessInfo.java"


# static fields
.field public static final FLAG_ALL_PROCESS_FROM_PKG:I = 0x1

.field public static final FLAG_ALL_PROVIDERS_FROM_PKG:I = 0x2

.field public static final FLAG_DEFAULT:I

.field public static final FLAG_NO_PROCESS_FROM_PKG:I


# instance fields
.field public allowInCompromised:Z

.field public flag:I

.field public packageName:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field private restart:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/content/pm/SdpProcessInfo;->flag:I

    iput-boolean v1, p0, Landroid/content/pm/SdpProcessInfo;->allowInCompromised:Z

    iput-boolean v1, p0, Landroid/content/pm/SdpProcessInfo;->restart:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/SdpProcessInfo;->processName:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/SdpProcessInfo;->packageName:Ljava/lang/String;

    iput p2, p0, Landroid/content/pm/SdpProcessInfo;->flag:I

    iput-boolean v1, p0, Landroid/content/pm/SdpProcessInfo;->allowInCompromised:Z

    iput-boolean v1, p0, Landroid/content/pm/SdpProcessInfo;->restart:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/content/pm/SdpProcessInfo;->flag:I

    iput-boolean v0, p0, Landroid/content/pm/SdpProcessInfo;->allowInCompromised:Z

    iput-boolean v0, p0, Landroid/content/pm/SdpProcessInfo;->restart:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/SdpProcessInfo;->processName:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/SdpProcessInfo;->packageName:Ljava/lang/String;

    iput p2, p0, Landroid/content/pm/SdpProcessInfo;->flag:I

    iput-boolean p3, p0, Landroid/content/pm/SdpProcessInfo;->allowInCompromised:Z

    iput-boolean p4, p0, Landroid/content/pm/SdpProcessInfo;->restart:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/content/pm/SdpProcessInfo;->flag:I

    iput-boolean v0, p0, Landroid/content/pm/SdpProcessInfo;->allowInCompromised:Z

    iput-boolean v0, p0, Landroid/content/pm/SdpProcessInfo;->restart:Z

    iput-object p1, p0, Landroid/content/pm/SdpProcessInfo;->processName:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/SdpProcessInfo;->packageName:Ljava/lang/String;

    iput v0, p0, Landroid/content/pm/SdpProcessInfo;->flag:I

    return-void
.end method


# virtual methods
.method public restartOnUnlock()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/SdpProcessInfo;->restart:Z

    return v0
.end method
