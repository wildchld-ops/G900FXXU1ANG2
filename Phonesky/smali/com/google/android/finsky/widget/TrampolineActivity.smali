.class public abstract Lcom/google/android/finsky/widget/TrampolineActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "TrampolineActivity.java"

# interfaces
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/widget/TrampolineActivity;Lcom/google/android/finsky/api/model/DfeToc;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/widget/TrampolineActivity;->initialize(Lcom/google/android/finsky/api/model/DfeToc;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/widget/TrampolineActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->showNetworkNecessaryDialog()V

    return-void
.end method

.method public static getLaunchIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/TrampolineActivity;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getPendingLaunchIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/app/PendingIntent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/TrampolineActivity;",
            ">;I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Lcom/google/android/finsky/widget/TrampolineActivity;->getLaunchIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p0, p2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private initialize(Lcom/google/android/finsky/api/model/DfeToc;I)V
    .locals 13

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->enableMultiCorpus()Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v10

    :goto_0
    add-int v8, v12, v9

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->shouldAllowConfiguration()Z

    move-result v9

    if-eqz v9, :cond_0

    if-gt v8, v10, :cond_2

    :cond_0
    const/4 v9, -0x1

    const-string v10, "apps"

    invoke-virtual {p0, v9, v10}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish(ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    move v9, v11

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v9, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;

    invoke-direct {v2, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "enableMultiCorpus"

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->enableMultiCorpus()Z

    move-result v12

    invoke-virtual {v2, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v9, "dfeToc"

    invoke-virtual {v2, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v9, "appWidgetId"

    invoke-virtual {v2, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    iget v0, v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->backend:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "backend_"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/widget/TrampolineActivity;->isBackendEnabled(I)Z

    move-result v9

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "name_"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v9, v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->backend:I

    invoke-virtual {p0, v9}, Lcom/google/android/finsky/widget/TrampolineActivity;->getCorpusName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v6, v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->name:Ljava/lang/String;

    :cond_3
    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    const-string v5, "name_0"

    invoke-virtual {p0, v11}, Lcom/google/android/finsky/widget/TrampolineActivity;->getCorpusName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "dialog_title"

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->getDialogTitle()I

    move-result v11

    invoke-virtual {v2, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v10}, Lcom/google/android/finsky/widget/TrampolineActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1
.end method

.method private showNetworkNecessaryDialog()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "Dialog.NoNetworkConnection"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const v3, 0x7f0902f3

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090212

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v2

    const-string v3, "Dialog.NoNetworkConnection"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract enableMultiCorpus()Z
.end method

.method public abstract finish(ILjava/lang/String;)V
.end method

.method protected getCorpusName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDialogTitle()I
    .locals 1

    const v0, 0x7f09010e

    return v0
.end method

.method protected isBackendEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v1, "backend"

    const/4 v2, 0x3

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->translate(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish(ILjava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, -0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->isLimitedOrEduUser()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/widget/TrampolineActivity;->setResult(I)V

    invoke-static {p0}, Lcom/google/android/finsky/activities/AccessRestrictedActivity;->showLimitedUserUI(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "appWidgetId"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v2, v0}, Lcom/google/android/finsky/widget/TrampolineActivity;->initialize(Lcom/google/android/finsky/api/model/DfeToc;I)V

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/google/android/finsky/widget/TrampolineActivity$1;

    invoke-direct {v4, p0, v0}, Lcom/google/android/finsky/widget/TrampolineActivity$1;-><init>(Lcom/google/android/finsky/widget/TrampolineActivity;I)V

    invoke-static {v1, v5, v4}, Lcom/google/android/finsky/utils/GetTocHelper;->getToc(Lcom/google/android/finsky/api/DfeApi;ZLcom/google/android/finsky/utils/GetTocHelper$Listener;)V

    goto :goto_0
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/widget/TrampolineActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish()V

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/widget/TrampolineActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/TrampolineActivity;->finish()V

    return-void
.end method

.method protected shouldAllowConfiguration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
