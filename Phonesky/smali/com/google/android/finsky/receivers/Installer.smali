.class public interface abstract Lcom/google/android/finsky/receivers/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;,
        Lcom/google/android/finsky/receivers/Installer$InstallerState;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/android/finsky/installer/InstallerListener;)V
.end method

.method public abstract cancel(Ljava/lang/String;)V
.end method

.method public abstract cancelAll()V
.end method

.method public abstract getProgress(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;
.end method

.method public abstract getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;
.end method

.method public abstract isBusy()Z
.end method

.method public abstract removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V
.end method

.method public abstract requestInstall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract setMobileDataAllowed(Ljava/lang/String;)V
.end method

.method public abstract setVisibility(Ljava/lang/String;ZZZ)V
.end method

.method public abstract start(Ljava/lang/Runnable;)V
.end method

.method public abstract startDeferredInstalls()V
.end method

.method public abstract uninstallAssetSilently(Ljava/lang/String;)V
.end method

.method public abstract uninstallPackagesByUid(Ljava/lang/String;)V
.end method

.method public abstract updateInstalledApps(Ljava/util/List;Ljava/lang/String;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation
.end method

.method public abstract updateSingleInstalledApp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
.end method
