.class public Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;
.super Ljava/lang/Object;
.source "InstallPolicies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/installer/InstallPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateWarnings"
.end annotation


# instance fields
.field public autoUpdateDisabled:Z

.field public largeUpdate:Z

.field public newPermissions:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->largeUpdate:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->newPermissions:Z

    iput-boolean v0, p0, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->autoUpdateDisabled:Z

    return-void
.end method


# virtual methods
.method public warningRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->autoUpdateDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->largeUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->newPermissions:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
