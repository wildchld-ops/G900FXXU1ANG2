.class public Lcom/google/android/finsky/activities/AddressChallengeActivity;
.super Lcom/google/android/finsky/activities/ChallengeActivity;
.source "AddressChallengeActivity.java"


# instance fields
.field private mFlow:Lcom/google/android/finsky/billing/BillingFlow;

.field private final mNavigationManager:Lcom/google/android/finsky/activities/FakeNavigationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ChallengeActivity;-><init>()V

    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/AddressChallengeActivity;->mNavigationManager:Lcom/google/android/finsky/activities/FakeNavigationManager;

    return-void
.end method

.method public static getIntent(ILcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    const-class v0, Lcom/google/android/finsky/activities/AddressChallengeActivity;

    invoke-static {v0, p0, p1, p2}, Lcom/google/android/finsky/activities/AddressChallengeActivity;->getIntent(Ljava/lang/Class;ILcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected static getIntent(Ljava/lang/Class;ILcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/activities/AddressChallengeActivity;",
            ">;I",
            "Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "backend"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "challenge"

    invoke-static {p2}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "extra_parameters"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/ChallengeActivity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f04001c

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/AddressChallengeActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/finsky/activities/AddressChallengeActivity;->mNavigationManager:Lcom/google/android/finsky/activities/FakeNavigationManager;

    const/4 v5, 0x0

    invoke-interface {v0, v4, p0, v5}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AddressChallengeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "backend"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AddressChallengeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "challenge"

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/AddressChallengeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_parameters"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;

    invoke-direct {v4, p0, p0, v1, v3}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/google/android/finsky/activities/AddressChallengeActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/activities/AddressChallengeActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/billing/BillingFlow;->resumeFromSavedState(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/google/android/finsky/activities/AddressChallengeActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/BillingFlow;->start()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/AddressChallengeActivity;->mNavigationManager:Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/FakeNavigationManager;->goUp()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/ChallengeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/ChallengeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AddressChallengeActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/AddressChallengeActivity;->mFlow:Lcom/google/android/finsky/billing/BillingFlow;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/billing/BillingFlow;->saveState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
