.class Lcom/google/android/finsky/activities/AuthenticatedActivity$7;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Lcom/google/android/finsky/utils/GetTocHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->loadTocAndContinue(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field final synthetic val$responseReceived:[Z

.field final synthetic val$shouldHandleIntent:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;[ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->val$responseReceived:[Z

    iput-boolean p3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->val$shouldHandleIntent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1    # Lcom/android/volley/VolleyError;

    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->hideLoadingIndicator()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->handleAuthenticationError(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/protos/Toc$TocResponse;)V
    .locals 5
    .param p1    # Lcom/google/android/finsky/protos/Toc$TocResponse;

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->val$responseReceived:[Z

    aget-boolean v2, v2, v3

    if-ne v2, v4, :cond_0

    new-instance v0, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;

    iget-object v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/finsky/activities/AuthenticatedActivity$7$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/AuthenticatedActivity$7$1;-><init>(Lcom/google/android/finsky/activities/AuthenticatedActivity$7;)V

    const/16 v3, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/utils/ApplicationDismissedDeferrer;->runOnApplicationClose(Ljava/lang/Runnable;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->val$responseReceived:[Z

    aput-boolean v4, v2, v3

    new-instance v1, Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {v1, p1}, Lcom/google/android/finsky/api/model/DfeToc;-><init>(Lcom/google/android/finsky/protos/Toc$TocResponse;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/finsky/FinskyApp;->setToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getSelfUpdateScheduler()Lcom/google/android/finsky/utils/SelfUpdateScheduler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/utils/SelfUpdateScheduler;->checkForSelfUpdate(Lcom/google/android/finsky/protos/Toc$TocResponse;)V

    iget-object v2, p1, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/finsky/protos/Toc$TocResponse;->billingConfig:Lcom/google/android/finsky/protos/Toc$BillingConfig;

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/InAppBillingSetting;->setVersionFromBillingConfig(Ljava/lang/String;Lcom/google/android/finsky/protos/Toc$BillingConfig;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-boolean v3, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$7;->val$shouldHandleIntent:Z

    # invokes: Lcom/google/android/finsky/activities/AuthenticatedActivity;->restrictLimitedOrEduUserAndContinue(Z)V
    invoke-static {v2, v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$100(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    goto :goto_0
.end method
