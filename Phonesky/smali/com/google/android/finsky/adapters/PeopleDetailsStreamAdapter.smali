.class public Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;
.super Lcom/google/android/finsky/adapters/CardListAdapter;
.source "PeopleDetailsStreamAdapter.java"


# instance fields
.field private final mIsShowingOwnProfile:Z

.field private mIsShowingOwnWarmWelcome:Z

.field private final mPlusDoc:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/Document;Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/DfeList;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 14
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Landroid/content/Context;
    .param p3    # Lcom/google/android/finsky/api/DfeApi;
    .param p4    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p5    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p6    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p7    # Lcom/google/android/finsky/utils/ClientMutationCache;
    .param p8    # Lcom/google/android/finsky/api/model/DfeList;
    .param p9    # Z
    .param p10    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCoreContentHeader()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v10, p9

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/google/android/finsky/adapters/CardListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/BucketedList;[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;Ljava/lang/String;ZZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iput-object p1, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v0, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getPersonDetails()Lcom/google/android/finsky/protos/DocDetails$PersonDetails;

    move-result-object v13

    if-eqz v13, :cond_0

    iget-boolean v0, v13, Lcom/google/android/finsky/protos/DocDetails$PersonDetails;->personIsRequester:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mIsShowingOwnProfile:Z

    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mIsShowingOwnProfile:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->warmWelcomeOwnProfileAcknowledged:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mIsShowingOwnWarmWelcome:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;Z)Z
    .locals 0
    .param p0    # Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mIsShowingOwnWarmWelcome:Z

    return p1
.end method

.method private getEmptyStateView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    check-cast v0, Lcom/google/android/finsky/layout/IdentifiableTextView;

    iget-boolean v1, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mIsShowingOwnProfile:Z

    if-eqz v1, :cond_1

    const v1, 0x7f090377

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/IdentifiableTextView;->setText(I)V

    const-string v1, "empty_state"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/IdentifiableTextView;->setIdentifier(Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v1, 0x7f090378

    goto :goto_1
.end method

.method private getProfileInfoView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400cc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;

    const-string v1, "profile_info"

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->setIdentifier(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mPlusDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/play/PeopleDetailsProfileInfoView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-object v0
.end method

.method private getWarmWelcomeCardView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04013f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const v2, 0x7f080251

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, p1

    new-instance v2, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter$1;-><init>(Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, p1

    check-cast v2, Lcom/google/android/finsky/layout/play/Identifiable;

    const-string v3, "self_warm_welcome"

    invoke-interface {v2, v3}, Lcom/google/android/finsky/layout/play/Identifiable;->setIdentifier(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget-boolean v2, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mIsShowingOwnWarmWelcome:Z

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1    # I

    if-nez p1, :cond_0

    const/16 v0, 0x14

    :goto_0
    return v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mIsShowingOwnWarmWelcome:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const/16 v0, 0x15

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    :cond_2
    invoke-super {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x16

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/finsky/adapters/CardListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getPlayCardDismissListener()Lcom/google/android/finsky/layout/play/PlayCardDismissListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->getProfileInfoView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iget-boolean v0, p0, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->mIsShowingOwnWarmWelcome:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->getWarmWelcomeCardView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    :cond_2
    invoke-super {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/adapters/PeopleDetailsStreamAdapter;->getEmptyStateView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/adapters/CardListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-super {p0}, Lcom/google/android/finsky/adapters/CardListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected isDismissed(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldHidePlainHeaderDuringInitialLoading()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldHidePlainHeaderOnEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
