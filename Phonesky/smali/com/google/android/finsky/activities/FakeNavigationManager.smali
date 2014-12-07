.class Lcom/google/android/finsky/activities/FakeNavigationManager;
.super Lcom/google/android/finsky/navigationmanager/NavigationManager;
.source "FakeNavigationManager.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;-><init>(Lcom/google/android/finsky/activities/MainActivity;)V

    iput-object p1, p0, Lcom/google/android/finsky/activities/FakeNavigationManager;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 0

    return-void
.end method

.method public canGoUp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSearch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public goBack()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/FakeNavigationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method

.method public goBrowse(Ljava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/activities/FakeNavigationManager;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, p3, v2}, Lcom/google/android/finsky/utils/IntentUtils;->createBrowseIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/FakeNavigationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/FakeNavigationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/activities/FakeNavigationManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/FakeNavigationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/FakeNavigationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public goUp()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/FakeNavigationManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public init(Lcom/google/android/finsky/activities/MainActivity;)V
    .locals 0

    return-void
.end method

.method public isBackStackEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
