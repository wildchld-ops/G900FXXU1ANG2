.class public Lcom/google/android/finsky/activities/UpdateAllActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "UpdateAllActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;
    }
.end annotation


# instance fields
.field private mCurrentFragment:Landroid/support/v4/app/Fragment;

.field private mCurrentPageType:I

.field private mCurrentUpdate:I

.field private mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mNegativeButton:Lcom/google/android/play/layout/PlayActionButton;

.field private mPositiveButton:Lcom/google/android/play/layout/PlayActionButton;

.field private mShowUpdateAllPrompt:Z

.field private mUpdatesForApproval:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;Ljava/util/List;Z)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/UpdateAllActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "UpdateAllActivity.updates-list"

    invoke-static {p1}, Lcom/google/android/finsky/utils/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "UpdateAllActivity.show-update-all-prompt"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private installUpdate(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    # getter for: Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->packageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->access$000(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->versionCode:I
    invoke-static {p1}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->access$300(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)I

    move-result v2

    # getter for: Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->packageTitle:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->access$100(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->reason:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->access$400(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/receivers/Installer;->updateSingleInstalledApp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private setButtonText(I)V
    .locals 4

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const v1, 0x7f0901ff

    const v0, 0x7f090076

    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mPositiveButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/play/layout/PlayActionButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mNegativeButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/play/layout/PlayActionButton;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const v1, 0x7f090208

    const v0, 0x7f090209

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const v1, 0x7f090207

    const v0, 0x7f090209

    goto :goto_0

    :cond_2
    const v1, 0x7f090206

    const v0, 0x7f090209

    goto :goto_0
.end method

.method private showNextOrFinish()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    if-nez v1, :cond_0

    iput v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcom/google/android/finsky/activities/UpdateAllActivity;->showPage(II)V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    iget-object v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mUpdatesForApproval:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mUpdatesForApproval:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->needsAutoUpdateWarning()Z

    move-result v1

    if-eqz v1, :cond_2

    iput v3, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    iget v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    invoke-direct {p0, v3, v1}, Lcom/google/android/finsky/activities/UpdateAllActivity;->showPage(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->needsLargeUpdateWarning()Z

    move-result v1

    if-eqz v1, :cond_3

    iput v4, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    iget v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    invoke-direct {p0, v4, v1}, Lcom/google/android/finsky/activities/UpdateAllActivity;->showPage(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->needsPermissionsWarning()Z

    move-result v1

    if-eqz v1, :cond_4

    iput v5, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    iget v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    invoke-direct {p0, v5, v1}, Lcom/google/android/finsky/activities/UpdateAllActivity;->showPage(II)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    invoke-direct {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->showNextOrFinish()V

    goto :goto_0
.end method

.method private showPage(II)V
    .locals 13

    const v12, 0x7f050004

    const v11, 0x7f050002

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/UpdateAllActivity;->setButtonText(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    const/4 v7, 0x0

    if-ne p1, v6, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UpdateAllActivity.updates-list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/finsky/activities/UpdateAllPromptFragment;->getInstance(I)Lcom/google/android/finsky/activities/UpdateAllPromptFragment;

    move-result-object v7

    invoke-virtual {v9, v11, v12}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    :goto_0
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    const v0, 0x7f080244

    invoke-virtual {v9, v0, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    iput-object v7, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    :cond_2
    return-void

    :cond_3
    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mUpdatesForApproval:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;

    if-ne p1, v1, :cond_7

    sget-object v4, Lcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;->AUTO_UPDATE_DISABLED:Lcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;

    :goto_1
    # getter for: Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->packageName:Ljava/lang/String;
    invoke-static {v10}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->access$000(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->packageTitle:Ljava/lang/String;
    invoke-static {v10}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->access$100(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mUpdatesForApproval:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    # getter for: Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->permissions:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->access$200(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;IILcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;Ljava/util/ArrayList;)Lcom/google/android/finsky/activities/UpdateApprovalFragment;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->getUpdateNumber()I

    move-result v1

    move-object v0, v7

    check-cast v0, Lcom/google/android/finsky/activities/UpdateApprovalFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/UpdateApprovalFragment;->getUpdateNumber()I

    move-result v0

    if-ne v1, v0, :cond_9

    :goto_2
    iget v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mShowUpdateAllPrompt:Z

    if-eqz v0, :cond_6

    :cond_5
    if-eqz v6, :cond_a

    :cond_6
    invoke-virtual {v9, v11, v12}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    :cond_7
    if-ne p1, v2, :cond_8

    sget-object v4, Lcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;->LARGE_UPDATE:Lcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;

    goto :goto_1

    :cond_8
    sget-object v4, Lcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;->PERMISSION_CHANGE:Lcom/google/android/finsky/activities/UpdateApprovalFragment$ApprovalType;

    goto :goto_1

    :cond_9
    const/4 v6, 0x0

    goto :goto_2

    :cond_a
    const v0, 0x7f050008

    const v1, 0x7f050009

    invoke-virtual {v9, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method private updateAll(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/services/CheckWifiAndAutoUpdate;->cancelCheck()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v12

    const-string v13, "bulk_update"

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->AUTO_UPDATE_ENABLED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14}, Lcom/google/android/finsky/installer/InstallPolicies;->getUpdateWarnings(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v16

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v18

    const/4 v11, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_1

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;

    invoke-virtual {v15}, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;->warningRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1f9

    const-string v4, "bulk_update"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/analytics/PlayStore$AppData;)V

    goto :goto_1

    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    const-string v4, "bulk_update"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v10, v4, v5, v6}, Lcom/google/android/finsky/receivers/Installer;->updateInstalledApps(Ljava/util/List;Ljava/lang/String;ZZ)V

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v17

    const/4 v11, 0x0

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    new-instance v5, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;

    const-string v6, "bulk_update"

    invoke-direct {v5, v2, v4, v6}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;-><init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/installer/InstallPolicies$UpdateWarnings;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    return-object v17
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    iget v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mPositiveButton:Lcom/google/android/play/layout/PlayActionButton;

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "UpdateAllActivity.updates-list"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/UpdateAllActivity;->updateAll(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mUpdatesForApproval:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->showNextOrFinish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mNegativeButton:Lcom/google/android/play/layout/PlayActionButton;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->finish()V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    if-eq v2, v4, :cond_3

    iget v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    if-eq v2, v5, :cond_3

    iget v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    if-ne v2, v6, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mPositiveButton:Lcom/google/android/play/layout/PlayActionButton;

    if-ne p1, v2, :cond_8

    iget-object v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mUpdatesForApproval:Ljava/util/ArrayList;

    iget v3, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;

    iget v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    if-ne v2, v4, :cond_6

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->setAutoUpdateDisableWarningAccepted()V

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->done()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->installUpdate(Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;)V

    :cond_5
    invoke-direct {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->showNextOrFinish()V

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    if-ne v2, v5, :cond_7

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->setLargeUpdateWarningAccepted()V

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    if-ne v2, v6, :cond_4

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/UpdateAllActivity$UpdateDetails;->setPermissionsWarningAccepted()V

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mNegativeButton:Lcom/google/android/play/layout/PlayActionButton;

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    invoke-direct {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->showNextOrFinish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f040139

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/UpdateAllActivity;->setContentView(I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    const v1, 0x7f080077

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/UpdateAllActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mPositiveButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mPositiveButton:Lcom/google/android/play/layout/PlayActionButton;

    const v2, 0x7f090212

    invoke-virtual {v1, v5, v2, p0}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    const v1, 0x7f080078

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/UpdateAllActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mNegativeButton:Lcom/google/android/play/layout/PlayActionButton;

    iget-object v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mNegativeButton:Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2, p0}, Lcom/google/android/play/layout/PlayActionButton;->configure(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "UpdateAllActivity.show-update-all-prompt"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mShowUpdateAllPrompt:Z

    if-nez p1, :cond_1

    iput v4, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mShowUpdateAllPrompt:Z

    if-eqz v1, :cond_0

    iput v4, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    :goto_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->showNextOrFinish()V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "UpdateAllActivity.updates-list"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->updateAll(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mUpdatesForApproval:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const-string v1, "UpdateAllActivity.approval-list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mUpdatesForApproval:Ljava/util/ArrayList;

    const-string v1, "UpdateAllActivity.current-update"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    const-string v1, "UpdateAllActivity.current-page-type"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    iget v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/UpdateAllActivity;->setButtonText(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/UpdateAllActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080244

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "UpdateAllActivity.approval-list"

    iget-object v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mUpdatesForApproval:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "UpdateAllActivity.current-update"

    iget v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentUpdate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "UpdateAllActivity.current-page-type"

    iget v1, p0, Lcom/google/android/finsky/activities/UpdateAllActivity;->mCurrentPageType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
