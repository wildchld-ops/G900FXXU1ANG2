.class public Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;
.super Ljava/lang/Object;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/receivers/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallerProgressReport"
.end annotation


# instance fields
.field public final bytesCompleted:J

.field public final bytesTotal:J

.field public final downloadStatus:I

.field public final installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/receivers/Installer$InstallerState;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    iput-wide p2, p0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->bytesCompleted:J

    iput-wide p4, p0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->bytesTotal:J

    iput p6, p0, Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;->downloadStatus:I

    return-void
.end method
