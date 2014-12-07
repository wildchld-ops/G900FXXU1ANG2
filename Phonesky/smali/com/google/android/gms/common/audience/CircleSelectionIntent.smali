.class public final Lcom/google/android/gms/common/audience/CircleSelectionIntent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;,
        Lcom/google/android/gms/common/audience/CircleSelectionIntent$SelectBuilder;
    }
.end annotation


# direct methods
.method public static getSelectedCirclesFromResult(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 1
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

    invoke-static {p0}, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;->getSelectedAudienceMembers(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateCirclesBuilder()Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;

    const-string v1, "com.google.android.gms.common.acl.UPDATE_CIRCLES"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/audience/AudienceSelectionIntentBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
