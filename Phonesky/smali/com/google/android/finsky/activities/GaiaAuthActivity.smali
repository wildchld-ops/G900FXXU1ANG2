.class public Lcom/google/android/finsky/activities/GaiaAuthActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "GaiaAuthActivity.java"

# interfaces
.implements Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;


# instance fields
.field private mGaiaAuthFragment:Lcom/google/android/finsky/fragments/GaiaAuthFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getAuthChallenge()Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "GaiaAuthActivity_challenge"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/ParcelableProto;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->getPayload()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;

    iget-object v2, v0, Lcom/google/android/finsky/protos/ChallengeProtos$Challenge;->authenticationChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    return-object v2
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;ZLcom/google/android/finsky/protos/ChallengeProtos$Challenge;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/GaiaAuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "GaiaAuthActivity_challenge"

    invoke-static {p3}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "GaiaAuthActivity_accountName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "GaiaAuthActivity_showWarning"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "GaiaAuthActivity_extraParams"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f04007b

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->getAuthChallenge()Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->gaiaHeaderText:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "GaiaAuthActivity_GaiaAuthFragment"

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    iput-object v2, p0, Lcom/google/android/finsky/activities/GaiaAuthActivity;->mGaiaAuthFragment:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    iget-object v2, p0, Lcom/google/android/finsky/activities/GaiaAuthActivity;->mGaiaAuthFragment:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->setListener(Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "GaiaAuthActivity_accountName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "GaiaAuthActivity_showWarning"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->newInstance(Ljava/lang/String;ZLcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;)Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/activities/GaiaAuthActivity;->mGaiaAuthFragment:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    iget-object v2, p0, Lcom/google/android/finsky/activities/GaiaAuthActivity;->mGaiaAuthFragment:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    invoke-virtual {v2, p0}, Lcom/google/android/finsky/fragments/GaiaAuthFragment;->setListener(Lcom/google/android/finsky/fragments/GaiaAuthFragment$Listener;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080046

    iget-object v3, p0, Lcom/google/android/finsky/activities/GaiaAuthActivity;->mGaiaAuthFragment:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "GaiaAuthActivity_GaiaAuthFragment"

    iget-object v2, p0, Lcom/google/android/finsky/activities/GaiaAuthActivity;->mGaiaAuthFragment:Lcom/google/android/finsky/fragments/GaiaAuthFragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onSuccess(II)V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->getAuthChallenge()Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseAuthenticationTypeParam:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/finsky/protos/ChallengeProtos$AuthenticationChallenge;->responseRetryCountParam:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "GaiaAuthActivity_challengeResponse"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v3, "GaiaAuthActivity_extraParams"

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "GaiaAuthActivity_extraParams"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/GaiaAuthActivity;->finish()V

    return-void
.end method
