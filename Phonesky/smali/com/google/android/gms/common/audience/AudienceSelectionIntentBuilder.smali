.class public Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/audience/CircleSelectionIntent$SelectBuilder;
.implements Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;-><init>(Landroid/content/Intent;)V

    return-void
.end method

.method public static getAddedAudienceDelta(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    const-string v0, "com.google.android.gms.common.acl.EXTRA_ADDED_AUDIENCE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getInitialAudienceMembers(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    const-string v0, "com.google.android.gms.common.acl.EXTRA_INITIAL_AUDIENCE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getRemovedAudienceDelta(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    const-string v0, "com.google.android.gms.common.acl.EXTRA_REMOVED_AUDIENCE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectedAudienceMembers(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 3
    .param p0    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->getInitialAudienceMembers(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->getRemovedAudienceDelta(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->getAddedAudienceDelta(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_CLIENT_APPLICATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/CircleSelectionIntent$SelectBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setInitialAudience(Ljava/util/ArrayList;)Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)",
            "Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_INITIAL_AUDIENCE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method public setInitialCircles(Ljava/util/ArrayList;)Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;)",
            "Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->setInitialAudience(Ljava/util/ArrayList;)Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;

    return-object p0
.end method

.method public bridge synthetic setInitialCircles(Ljava/util/ArrayList;)Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;
    .locals 1
    .param p1    # Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->setInitialCircles(Ljava/util/ArrayList;)Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setUpdatePersonId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v0, "People qualified ID"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ck;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.common.acl.EXTRA_UPDATE_PERSON_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public bridge synthetic setUpdatePersonId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->setUpdatePersonId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;

    move-result-object v0

    return-object v0
.end method
