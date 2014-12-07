.class public Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;
.super Ljava/lang/Object;
.source "ConsumptionUtils.java"


# direct methods
.method private static getConsumptionAppRequiredString(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f090271

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090272

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090273

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isNewsstandEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090275

    goto :goto_0

    :cond_0
    const v0, 0x7f090274

    goto :goto_0

    :pswitch_5
    const v0, 0x7f090276

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/content/Intent;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open an item from the corpus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0, p1, v2}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppViewItemIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isConsumptionAppInstalled(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const-string v1, "com.google.android.videos"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {}, Lcom/google/android/finsky/utils/IntentUtils;->getMinimumRequiredVideosAppVersion()I

    move-result v3

    if-ge v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isNewsstandEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.google.android.apps.magazines"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v3, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    sget-object v1, Lcom/google/android/finsky/config/G;->firstNewsstandAppVersion:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v3, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isConsumptionAppNeeded(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/IntentUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {v2}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->isConsumptionAppInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/android/finsky/utils/IntentUtils;->canResolveIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public static openItem(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;I)Z
    .locals 5

    const/4 v3, 0x0

    invoke-static/range {p0 .. p5}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->showAppNeededDialogIfNeeded(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    invoke-static {p0, p2, p1}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/google/android/finsky/utils/Notifier;->hideAllMessagesForPackage(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const v4, 0x7f090180

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static showAppNeededDialog(Landroid/content/Context;ILandroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;I)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/finsky/utils/IntentUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const v5, 0x7f090180

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "app_needed_dialog"

    invoke-virtual {p2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {p1}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->getConsumptionAppRequiredString(I)I

    move-result v4

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "dialog_details_url"

    invoke-static {v0}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090212

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090076

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v1, p3, p4, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v2

    const-string v5, "app_needed_dialog"

    invoke-virtual {v2, p2, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showAppNeededDialogIfNeeded(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;I)Z
    .locals 1

    invoke-static {p0, p2, p1}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->isConsumptionAppNeeded(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {p0, v0, p3, p4, p5}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->showAppNeededDialog(Landroid/content/Context;ILandroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
