.class Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;
.super Ljava/lang/Object;
.source "RestoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/RestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageInstallStatus"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field attempts:I

.field retryTime:J

.field title:Ljava/lang/String;

.field versionCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/services/RestoreService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/services/RestoreService$PackageInstallStatus;-><init>()V

    return-void
.end method
