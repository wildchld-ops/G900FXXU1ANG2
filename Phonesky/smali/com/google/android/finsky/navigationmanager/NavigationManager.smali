.class public Lcom/google/android/finsky/navigationmanager/NavigationManager;
.super Ljava/lang/Object;
.source "NavigationManager.java"


# static fields
.field private static RESPECT_TASKS_IN_UP:Z


# instance fields
.field private mActivity:Lcom/google/android/finsky/activities/MainActivity;

.field private final mBackStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/finsky/navigationmanager/NavigationState;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->RESPECT_TASKS_IN_UP:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/finsky/utils/MainThreadStack;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/MainThreadStack;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->init(Lcom/google/android/finsky/activities/MainActivity;)V

    return-void
.end method

.method private canNavigate()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResolvedLinkClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;
    .locals 7
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p3    # Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager$4;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Ljava/lang/String;)V

    return-object v0
.end method

.method private goBack(Z)Z
    .locals 8
    .param p1    # Z

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v4

    const/16 v5, 0x258

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/google/android/finsky/utils/FinskyLog;->startTiming()V

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    iget-object v4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/navigationmanager/NavigationState;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private goToAggregatedHome()V
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    return-void
.end method

.method private goToCorpusHome()V
    .locals 9

    const/4 v7, 0x3

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v6}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    :goto_1
    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/navigationmanager/NavigationState;

    iget v3, v2, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    if-ne v3, v7, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v7, v2, Lcom/google/android/finsky/navigationmanager/NavigationState;->backstackName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    const/16 v6, 0xb

    if-ne v3, v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v7, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/navigationmanager/NavigationState;

    iget-object v6, v6, Lcom/google/android/finsky/navigationmanager/NavigationState;->backstackName:Ljava/lang/String;

    invoke-virtual {v7, v6, v8}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v7, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v7

    invoke-interface {v7}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v6, v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->landingUrl:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->name:Ljava/lang/String;

    invoke-virtual {p0, v6, v7, v0, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome()V

    goto :goto_0
.end method

.method private goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 26
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Z
    .param p6    # Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->hasAntennaInfo()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x5

    invoke-static/range {p1 .. p2}, Lcom/google/android/finsky/activities/AntennaFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/activities/AntennaFragment;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v6, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->hasDealOfTheDayInfo()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    invoke-static/range {p1 .. p2}, Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/activities/FreeSongOfTheDayFragment;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v6, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    :cond_2
    sparse-switch v25, :sswitch_data_0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-static/range {v11 .. v16}, Lcom/google/android/finsky/activities/DetailsFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/DetailsFragment;

    move-result-object v21

    const/4 v5, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p5

    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    :sswitch_0
    const/4 v5, 0x5

    invoke-static/range {p1 .. p2}, Lcom/google/android/finsky/activities/CreatorDetailsFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/activities/CreatorDetailsFragment;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v6, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v5}, Lcom/google/android/finsky/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v5}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f09014b

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0902ce

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v5

    iget-object v0, v5, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v10, 0x1

    :goto_1
    if-eqz v10, :cond_6

    move-object/from16 v9, p6

    :goto_2
    if-nez v10, :cond_3

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    const-string v5, "Selecting account %s for package %s. overriding=[%s]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v9}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v23, v6, v7

    const/4 v7, 0x2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-static/range {v5 .. v10}, Lcom/google/android/finsky/activities/DetailsFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/DetailsFragment;

    move-result-object v18

    const/4 v5, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p5

    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v19

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v22

    new-instance v17, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->getAppDetailsAccount(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :sswitch_3
    const/16 v5, 0xb

    invoke-static/range {p1 .. p2}, Lcom/google/android/finsky/activities/PeopleDetailsFragment;->newInstance(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/activities/PeopleDetailsFragment;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v6, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x1c -> :sswitch_3
    .end sparse-switch
.end method

.method public static hasClickListener(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasLinkAnnotation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasAntennaInfo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasContainerAnnotation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getContainerAnnotation()Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->browseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showPage(ILandroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/support/v4/app/Fragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method private showPage(ILandroid/support/v4/app/Fragment;Z)V
    .locals 3
    .param p1    # I
    .param p2    # Landroid/support/v4/app/Fragment;
    .param p3    # Z

    invoke-static {}, Lcom/google/android/finsky/utils/FinskyLog;->startTiming()V

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f080046

    invoke-virtual {v0, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->popBackStack()V

    :cond_0
    new-instance v1, Lcom/google/android/finsky/navigationmanager/NavigationState;

    invoke-direct {v1, p1}, Lcom/google/android/finsky/navigationmanager/NavigationState;-><init>(I)V

    iget-object v2, v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->backstackName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0x1001

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method

.method public buy(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILcom/google/android/finsky/utils/DocUtils$OfferFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Landroid/accounts/Account;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # I
    .param p4    # Lcom/google/android/finsky/utils/DocUtils$OfferFilter;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/billing/lightpurchase/LightPurchaseFlowActivity;->createIntent(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILcom/google/android/finsky/utils/DocUtils$OfferFilter;[BLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const/16 v1, 0x21

    invoke-virtual {v0, v7, v1}, Lcom/google/android/finsky/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public canGoUp()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->isBackStackEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/navigationmanager/NavigationState;

    iget v5, v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    if-eq v5, v3, :cond_0

    iget v5, v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/fragments/PageFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public canSearch()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentPageType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deserialize(Landroid/os/Bundle;)Z
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const-string v3, "nm_state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/navigationmanager/NavigationState;

    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/fragments/PageFragment;->rebindActionBar()V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public flush()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    move-result v0

    return v0
.end method

.method public getActivePage()Lcom/google/android/finsky/fragments/PageFragment;
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/fragments/PageFragment;

    return-object v0
.end method

.method public getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;
    .locals 9
    .param p1    # Landroid/accounts/Account;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # I
    .param p7    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-eqz p7, :cond_0

    move-object/from16 v3, p7

    :goto_0
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;

    move-object v1, p0

    move v2, p6

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager$5;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v3

    goto :goto_0
.end method

.method public getClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 6
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .param p3    # Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasLinkAnnotation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getLinkAnnotation()Lcom/google/android/finsky/protos/DocAnnotations$Link;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocAnnotations$Link;->resolvedLink:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getLinkAnnotation()Lcom/google/android/finsky/protos/DocAnnotations$Link;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/finsky/protos/DocAnnotations$Link;->resolvedLink:Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getResolvedLinkClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager$1;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasContainerAnnotation()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getContainerAnnotation()Lcom/google/android/finsky/protos/Containers$ContainerMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/Containers$ContainerMetadata;->browseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/NavigationManager$3;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_0
.end method

.method public getCurrentDocument()Lcom/google/android/finsky/api/model/Document;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsDataBasedFragment;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentPageType()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/navigationmanager/NavigationState;

    iget v0, v0, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    goto :goto_0
.end method

.method public getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$6;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager$6;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V

    return-object v0
.end method

.method public goBack()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBack(Z)Z

    move-result v0

    return v0
.end method

.method public goBrowse(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/4 v0, 0x4

    if-eqz p4, :cond_0

    invoke-virtual {p4, p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(Ljava/lang/String;)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;

    const/4 v6, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->clear()V

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    iget-object v3, v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->landingUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->name:Ljava/lang/String;

    iget v5, v0, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->backend:I

    invoke-static {v3, v4, v5, p1}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {p0, v3, v1, v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getHomeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getHomeUrl()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    move-result-object v3

    iget-object v2, v3, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->landingUrl:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/MainActivity;->restartOnResume()V

    goto :goto_0
.end method

.method public goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    const v2, 0x7f090111

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/DfeToc;->getHomeUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    move-result-object v1

    invoke-direct {p0, v3, v1, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method public goToAllReviews(Lcom/google/android/finsky/api/model/Document;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/ReviewsActivity;->show(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0
.end method

.method public goToCorpusHome(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/activities/TabbedBrowseFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;)Lcom/google/android/finsky/activities/TabbedBrowseFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/utils/DetailsShimFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/utils/DetailsShimFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public goToFlagContent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/FlagItemDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public goToImagesLightbox(Lcom/google/android/finsky/api/model/Document;II)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->show(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;II)V

    goto :goto_0
.end method

.method public goToMyDownloads(Lcom/google/android/finsky/api/model/DfeToc;Z)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p2    # Z

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {p1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->newInstance(Lcom/google/android/finsky/api/model/DfeToc;Z)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public goToMyWishlist()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-static {}, Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;->newInstance()Lcom/google/android/finsky/activities/mywishlist/MyWishlistFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public goToScreenshots(Lcom/google/android/finsky/api/model/Document;I)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToImagesLightbox(Lcom/google/android/finsky/api/model/Document;II)V

    return-void
.end method

.method public goToSearch(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://market.android.com/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "q"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/Utils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v1, p1, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public goToSearch(Ljava/lang/String;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {p1, p2}, Lcom/google/android/finsky/api/DfeUtils;->formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public goToSearch(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    invoke-static {p1, p2}, Lcom/google/android/finsky/activities/SearchFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/SearchFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    return-void
.end method

.method public goUp()V
    .locals 9

    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v5}, Lcom/google/android/finsky/activities/MainActivity;->isStateSaved()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v5

    const/16 v6, 0x25a

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    sget-boolean v5, Lcom/google/android/finsky/navigationmanager/NavigationManager;->RESPECT_TASKS_IN_UP:Z

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getCurrentDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-static {v5, v6, v2}, Lcom/google/android/finsky/utils/IntentUtils;->createCorpusIntent(Landroid/content/Context;ILcom/google/android/finsky/api/model/DfeToc;)Landroid/content/Intent;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v5, v4}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v5}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v5}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-static {v5}, Lcom/google/android/finsky/utils/IntentUtils;->createAggregatedHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/navigationmanager/NavigationState;

    iget v5, v1, Lcom/google/android/finsky/navigationmanager/NavigationState;->pageType:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToCorpusHome()V

    goto :goto_0

    :pswitch_3
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBack(Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleDeepLink(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;

    const/16 v0, 0x9

    invoke-static {p1}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->newInstance(Landroid/net/Uri;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public handleDeepLink(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->handleDeepLink(Landroid/net/Uri;)V

    return-void
.end method

.method public init(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/activities/MainActivity;

    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-void
.end method

.method public isBackStackEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 3
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "dialog_details_url"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openItem(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    .locals 6
    .param p1    # Landroid/accounts/Account;
    .param p2    # Lcom/google/android/finsky/api/model/Document;

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->openItem(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;I)Z

    return-void
.end method

.method public popBackStack()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public refreshPage()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getActivePage()Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->onDataChanged()V

    goto :goto_0

    :cond_1
    const-string v1, "Called refresh but there was no active page"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method

.method public replaceDetailsShimWithDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public resolveLink(Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 9
    .param p1    # Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->browseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->browseUrl:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->detailsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->detailsUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v5, v5, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->directPurchase:Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

    if-eqz v0, :cond_3

    const-string v0, "Direct purchase deprecated."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->directPurchase:Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;

    iget-object v6, v0, Lcom/google/android/finsky/protos/ResolveLink$DirectPurchase;->detailsUrl:Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v5, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->homeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->homeUrl:Ljava/lang/String;

    invoke-virtual {p0, p4, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    if-eqz v0, :cond_6

    const/4 v8, 0x0

    iget-object v0, p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    iget-object v0, v0, Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;->prefillCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->redeemGiftCard:Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;

    iget-object v8, v0, Lcom/google/android/finsky/protos/ResolveLink$RedeemGiftCard;->prefillCode:Ljava/lang/String;

    :cond_5
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1, v8}, Lcom/google/android/finsky/billing/lightpurchase/billingprofile/instruments/RedeemCodeActivity;->createIntent(Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, v7}, Lcom/google/android/finsky/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    iget-object v0, p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->searchUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/finsky/protos/ResolveLink$ResolvedLink;->searchUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public searchFromSuggestion(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->canNavigate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    invoke-static {p1, p2}, Lcom/google/android/finsky/api/DfeUtils;->formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/finsky/activities/SearchFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/SearchFragment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showPage(ILandroid/support/v4/app/Fragment;Z)V

    :cond_0
    return-void
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mBackStack:Ljava/util/Stack;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "nm_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public showAppNeededDialog(I)V
    .locals 4
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->showAppNeededDialog(Landroid/content/Context;ILandroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;I)V

    return-void
.end method

.method public terminate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager;->mActivity:Lcom/google/android/finsky/activities/MainActivity;

    return-void
.end method
