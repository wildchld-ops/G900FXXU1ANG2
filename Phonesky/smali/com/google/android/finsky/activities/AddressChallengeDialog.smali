.class public Lcom/google/android/finsky/activities/AddressChallengeDialog;
.super Lcom/google/android/finsky/activities/AddressChallengeActivity;
.source "AddressChallengeDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/AddressChallengeActivity;-><init>()V

    return-void
.end method

.method public static getIntent(ILcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    const-class v0, Lcom/google/android/finsky/activities/AddressChallengeDialog;

    invoke-static {v0, p0, p1, p2}, Lcom/google/android/finsky/activities/AddressChallengeActivity;->getIntent(Ljava/lang/Class;ILcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/AddressChallengeDialog;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/google/android/finsky/activities/AddressChallengeActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/layout/CustomActionBar;->hide()V

    return-void
.end method
