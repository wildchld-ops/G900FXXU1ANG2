.class final Lcom/google/android/finsky/utils/PlayCardUtils$1;
.super Ljava/lang/Object;
.source "PlayCardUtils.java"

# interfaces
.implements Lcom/google/android/finsky/installer/InstallerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PlayCardUtils;->initializeCardTrackers()V
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
.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;
    .param p3    # I

    # invokes: Lcom/google/android/finsky/utils/PlayCardUtils;->updateTrackedCardPrices()V
    invoke-static {}, Lcom/google/android/finsky/utils/PlayCardUtils;->access$000()V

    return-void
.end method
