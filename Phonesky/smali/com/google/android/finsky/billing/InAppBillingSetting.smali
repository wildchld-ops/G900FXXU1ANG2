.class public Lcom/google/android/finsky/billing/InAppBillingSetting;
.super Ljava/lang/Object;
.source "InAppBillingSetting.java"


# direct methods
.method private static getSharedIabMaxVersionPreference(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .locals 5
    .param p0    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/VendingPreferences;->getMainPrefs()Lcom/google/android/finsky/config/PreferenceFile;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/finsky/utils/Utils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAB_VERSION_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v3

    return-object v3
.end method

.method public static isEnabled(Ljava/lang/String;I)Z
    .locals 6
    .param p0    # Ljava/lang/String;
    .param p1    # I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/billing/InAppBillingSetting;->getSharedIabMaxVersionPreference(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "Unknown account %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/android/finsky/utils/GetTocHelper;->getTocBlocking(Lcom/google/android/finsky/api/DfeApi;)Lcom/google/android/finsky/protos/Toc$TocResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    invoke-static {p0, v3}, Lcom/google/android/finsky/billing/InAppBillingSetting;->setVersionFromBillingConfig(Ljava/lang/String;Lcom/google/android/finsky/protos/Toc$BillingConfig;)V

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt p1, v3, :cond_3

    move v3, v4

    :goto_1
    move v5, v3

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1
.end method

.method private static setVersion(Ljava/lang/String;I)V
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # I

    invoke-static {p0}, Lcom/google/android/finsky/billing/InAppBillingSetting;->getSharedIabMaxVersionPreference(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setVersionFromBillingConfig(Ljava/lang/String;Lcom/google/android/finsky/protos/Toc$BillingConfig;)V
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Lcom/google/android/finsky/protos/Toc$BillingConfig;

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/finsky/protos/Toc$BillingConfig;->hasMaxIabApiVersion:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/finsky/protos/Toc$BillingConfig;->maxIabApiVersion:I

    invoke-static {p0, v0}, Lcom/google/android/finsky/billing/InAppBillingSetting;->setVersion(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
