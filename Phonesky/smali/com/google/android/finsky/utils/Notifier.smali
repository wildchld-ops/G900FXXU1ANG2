.class public interface abstract Lcom/google/android/finsky/utils/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# virtual methods
.method public abstract hideAllMessagesForPackage(Ljava/lang/String;)V
.end method

.method public abstract hideInstallingMessage()V
.end method

.method public abstract hideUpdatesAvailableMessage()V
.end method

.method public abstract setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V
.end method

.method public abstract showDownloadErrorMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
.end method

.method public abstract showExternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showExternalStorageMissing(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showInstallationFailureMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract showInstallingMessage(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract showInternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showMaliciousAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showNewUpdatesAvailableMessage(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract showNormalAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V
.end method

.method public abstract showOutstandingUpdatesMessage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showPurchaseErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showSubscriptionsWarningMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showSuccessfulInstallMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract showUpdatesNeedApprovalMessage(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;I)V"
        }
    .end annotation
.end method
