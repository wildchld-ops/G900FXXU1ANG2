.class public Lcom/google/android/finsky/utils/GPlusDialogsHelper;
.super Ljava/lang/Object;
.source "GPlusDialogsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/GPlusDialogsHelper$PublicReviewsDialog;,
        Lcom/google/android/finsky/utils/GPlusDialogsHelper$GPlusSignUpAndPublicReviewsDialog;,
        Lcom/google/android/finsky/utils/GPlusDialogsHelper$GPlusSignUpDialog;
    }
.end annotation


# direct methods
.method public static showGPlusSignUpAndPublicReviewsDialog(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/utils/GPlusDialogsHelper$GPlusSignUpAndPublicReviewsDialog;->newInstance()Lcom/google/android/finsky/utils/GPlusDialogsHelper$GPlusSignUpAndPublicReviewsDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/utils/GPlusDialogsHelper$GPlusSignUpAndPublicReviewsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showGPlusSignUpDialog(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/utils/GPlusDialogsHelper$GPlusSignUpDialog;->newInstance()Lcom/google/android/finsky/utils/GPlusDialogsHelper$GPlusSignUpDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/google/android/finsky/utils/GPlusDialogsHelper$GPlusSignUpDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showPublicReviewsDialog(Landroid/support/v4/app/FragmentManager;)Z
    .locals 4

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedPlusReviews:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/GPlusDialogsHelper$PublicReviewsDialog;->newInstance()Lcom/google/android/finsky/utils/GPlusDialogsHelper$PublicReviewsDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/google/android/finsky/utils/GPlusDialogsHelper$PublicReviewsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
