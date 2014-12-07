.class Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$5;
.super Ljava/lang/Object;
.source "AddressChallengeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->setupWidgets(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$5;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$5;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    # getter for: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mChallenge:Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;
    invoke-static {v4}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$000(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/finsky/protos/ChallengeProtos$AddressChallenge;->errorInputField:[Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    iget-object v4, p0, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment$5;->this$0:Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;

    # getter for: Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;
    invoke-static {v4}, Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;->access$200(Lcom/google/android/finsky/billing/challenge/AddressChallengeFragment;)Lcom/google/android/finsky/layout/BillingAddress;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/finsky/layout/BillingAddress;->displayError(Lcom/google/android/finsky/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
