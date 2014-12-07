.class final Lcom/google/android/finsky/utils/RateReviewHelper$1;
.super Ljava/lang/Object;
.source "RateReviewHelper.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/RateReviewHelper;->checkAndConfirmGPlus(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lcom/google/android/finsky/utils/RateReviewHelper$1;->val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;)V
    .locals 3
    .param p1    # Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;->partialUserProfile:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/GPlusDialogsHelper;->showGPlusSignUpAndPublicReviewsDialog(Landroid/support/v4/app/FragmentManager;)V

    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$1;->val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;

    invoke-interface {v1}, Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;->onCheckAndConfirmGPlusFailed()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$1;->val$activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/GPlusDialogsHelper;->showPublicReviewsDialog(Landroid/support/v4/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$1;->val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;

    invoke-interface {v1}, Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;->onCheckAndConfirmGPlusFailed()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/utils/RateReviewHelper$1;->val$listener:Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;

    new-instance v2, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v2, v0}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    invoke-interface {v1, v2}, Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;->onCheckAndConfirmGPlusPassed(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/utils/RateReviewHelper$1;->onResponse(Lcom/google/android/finsky/protos/PlusProfile$PlusProfileResponse;)V

    return-void
.end method
