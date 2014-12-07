.class final Lcom/google/android/finsky/utils/PackageManagerHelper$1;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PackageManagerHelper;->installPackage(Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;ZZLcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;ZLjava/lang/String;Lcom/google/android/finsky/protos/AndroidAppDelivery$EncryptionParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installCompleted(ZILjava/lang/String;)V
    .locals 0
    .param p1    # Z
    .param p2    # I
    .param p3    # Ljava/lang/String;

    return-void
.end method
