.class public Lcom/google/android/finsky/billing/iab/InAppBillingUtils;
.super Ljava/lang/Object;
.source "InAppBillingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    }
.end annotation


# direct methods
.method public static buildDocid(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/protos/Common$Docid;
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, "inapp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xb

    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/finsky/protos/Common$Docid;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/Common$Docid;-><init>()V

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/finsky/protos/Common$Docid;->backend:I

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/Common$Docid;->hasBackend:Z

    iput v1, v0, Lcom/google/android/finsky/protos/Common$Docid;->type:I

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/Common$Docid;->hasType:Z

    iput-object p0, v0, Lcom/google/android/finsky/protos/Common$Docid;->backendDocid:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/google/android/finsky/protos/Common$Docid;->hasBackendDocid:Z

    return-object v0

    :cond_1
    const-string v2, "subs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xf

    goto :goto_0
.end method

.method public static buildDocidStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferredAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/AppStates;->blockingLoad()V

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/library/Libraries;->blockingLoad()V

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v5, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    invoke-virtual {v2, p0, v5}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils;->pickAccount(Lcom/google/android/finsky/appstate/AppStates$AppState;Ljava/util/List;)Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v5, v4

    :goto_0
    return-object v5

    :cond_0
    invoke-static {p1}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "%s: Account from first account - %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v7

    iget-object v7, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    goto :goto_0

    :cond_1
    const-string v5, "%s: No account found."

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p0, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static pickAccount(Lcom/google/android/finsky/appstate/AppStates$AppState;Ljava/util/List;)Landroid/accounts/Account;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/appstate/AppStates$AppState;",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)",
            "Landroid/accounts/Account;"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "%s: Account determined from installer data - %s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v0}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v2

    :cond_1
    const-string v4, "%s: Account determined from library ownership - %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v3, v5, v6

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    move-object v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
