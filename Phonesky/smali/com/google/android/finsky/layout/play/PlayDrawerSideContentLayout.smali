.class public Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;
.super Landroid/widget/LinearLayout;
.source "PlayDrawerSideContentLayout.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/DrawerProfileInfoView$OnNavigationModeChangeListener;


# instance fields
.field private mDrawerAccountsListView:Landroid/widget/ListView;

.field private mDrawerDestinationsListView:Landroid/widget/ListView;

.field private mPlusDoc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

.field private mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

.field private final mTransitionAnimationDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mTransitionAnimationDuration:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;)Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mPlusDoc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;Lcom/google/android/finsky/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mPlusDoc:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;)Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    return-object v0
.end method

.method private getPlusDocAndConfigureProfileInfoView(Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/experiments/FinskyExperiments;->useDefaultProfileInDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->configure(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/protos/Doc$Image;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$1;-><init>(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;)V

    new-instance v2, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout$2;-><init>(Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;)V

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->getPlusProfile(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private updateVisibility(IZ)V
    .locals 10

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mTransitionAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerDestinationsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const v3, 0x3f4ccccd

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mTransitionAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerAccountsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerDestinationsListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerAccountsListView:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerDestinationsListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerAccountsListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mTransitionAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mTransitionAnimationDuration:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerDestinationsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, -0x40800000

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f4ccccd

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mTransitionAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerAccountsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerDestinationsListView:Landroid/widget/ListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerAccountsListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerDestinationsListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerAccountsListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAccountsListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerAccountsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getDestinationsListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerDestinationsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->setOnNavigationModeChangeListener(Lcom/google/android/finsky/layout/play/DrawerProfileInfoView$OnNavigationModeChangeListener;)V

    const v0, 0x7f080179

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerDestinationsListView:Landroid/widget/ListView;

    const v0, 0x7f08017a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerAccountsListView:Landroid/widget/ListView;

    return-void
.end method

.method public onNavigationModeChange(Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->updateVisibility(IZ)V

    return-void
.end method

.method public refresh(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerDestinationsListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerDestinationsListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    invoke-virtual {v1}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerAccountsListView:Landroid/widget/ListView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerAccountsListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;

    invoke-virtual {v1}, Lcom/google/android/finsky/adapters/SideDrawerAccountsAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/finsky/api/AccountHandler;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v4, v0

    if-nez v4, :cond_3

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->setVisibility(I)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->bindNavigationManager(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    invoke-direct {p0, v4, p2, p1}, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->getPlusDocAndConfigureProfileInfoView(Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    iget-object v4, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    array-length v5, v0

    if-le v5, v2, :cond_4

    :goto_1
    invoke-virtual {v4, v2}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->setAccountListEnabled(Z)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->setNavigationMode(I)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method public setNavigationMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mProfileInfoView:Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/play/DrawerProfileInfoView;->setNavigationMode(I)V

    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerDestinationsListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/play/PlayDrawerSideContentLayout;->mDrawerDestinationsListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/adapters/SideDrawerDestinationsAdapter;->updateCurrentBackendId(I)V

    goto :goto_0
.end method
