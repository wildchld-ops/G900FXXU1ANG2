.class public Lcom/google/android/finsky/utils/GPlusDialogsHelper$GPlusSignUpAndPublicReviewsDialog;
.super Lcom/google/android/finsky/activities/SimpleAlertDialog;
.source "GPlusDialogsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/GPlusDialogsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GPlusSignUpAndPublicReviewsDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/google/android/finsky/utils/GPlusDialogsHelper$GPlusSignUpAndPublicReviewsDialog;
    .locals 4

    new-instance v1, Lcom/google/android/finsky/utils/GPlusDialogsHelper$GPlusSignUpAndPublicReviewsDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/utils/GPlusDialogsHelper$GPlusSignUpAndPublicReviewsDialog;-><init>()V

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    const v2, 0x7f090372

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessageId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090375

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090076

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setNegativeId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->configureDialog(Lcom/google/android/finsky/activities/SimpleAlertDialog;)V

    return-object v1
.end method


# virtual methods
.method protected onPositiveClick()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->onPositiveClick()V

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/GPlusDialogsHelper$GPlusSignUpAndPublicReviewsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/GPlusUtils;->launchGPlusSignUp(Landroid/app/Activity;)V

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedPlusReviews:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    return-void
.end method
