.class public abstract Lcom/google/android/finsky/fragments/LoggingFragment;
.super Landroid/support/v4/app/Fragment;
.source "LoggingFragment.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# instance fields
.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unwanted children."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/LoggingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/LoggingFragment;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method protected abstract getPlayStoreUiElementType()I
.end method

.method protected logClickEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/fragments/LoggingFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent activity must implement PlayStoreUiElementNode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/LoggingFragment;->getPlayStoreUiElementType()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/LoggingFragment;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/LoggingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "authAccount argument not set."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Ljava/lang/String;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/LoggingFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/fragments/LoggingFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_1
    return-void
.end method
