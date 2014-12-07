.class public Lcom/google/android/finsky/activities/ReviewsActivity;
.super Lcom/google/android/finsky/activities/AuthenticatedActivity;
.source "ReviewsActivity.java"

# interfaces
.implements Lcom/google/android/finsky/fragments/PageFragmentHost;


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/ReviewsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "finsky.ReviewsActivity.document"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method public goBack()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const v6, 0x7f080046

    const v3, 0x7f04005c

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/ReviewsActivity;->setContentView(I)V

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "finsky.ReviewsActivity.document"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    new-instance v3, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const/4 v5, 0x0

    invoke-interface {v3, v4, p0, v5}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {p0, v3}, Lcom/google/android/finsky/activities/ReviewsFragment;->newInstance(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/activities/ReviewsFragment;

    move-result-object v0

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goUp()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onReady(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    return-void
.end method

.method public updateBreadcrumb(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentBackendId(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    invoke-interface {v0, p1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    return-void
.end method
