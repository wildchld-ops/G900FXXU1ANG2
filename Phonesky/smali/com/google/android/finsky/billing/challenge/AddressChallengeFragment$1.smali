.class Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;
.super Ljava/lang/Object;
.source "AddressChallengeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$1;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    # getter for: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;
    invoke-static {v2}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$000(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorHtml:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    return-void
.end method
