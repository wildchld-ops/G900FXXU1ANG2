.class public Lcom/google/android/finsky/fragments/SidecarFragment;
.super Landroid/support/v4/app/Fragment;
.source "SidecarFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/fragments/SidecarFragment$Listener;
    }
.end annotation


# instance fields
.field private mCreated:Z

.field private mListener:Lcom/google/android/finsky/fragments/SidecarFragment$Listener;

.field private mState:I

.field private mStateInstance:I

.field private mSubstate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mState:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mStateInstance:I

    return-void
.end method

.method private notifyListener()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mListener:Lcom/google/android/finsky/fragments/SidecarFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mListener:Lcom/google/android/finsky/fragments/SidecarFragment$Listener;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/fragments/SidecarFragment$Listener;->onStateChange(Lcom/google/android/finsky/fragments/SidecarFragment;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAndRestoreFromSavedState(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/android/finsky/fragments/SidecarFragment;->restoreFromSavedInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mState:I

    return v0
.end method

.method public getStateInstance()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mStateInstance:I

    return v0
.end method

.method public getSubstate()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mSubstate:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/fragments/SidecarFragment;->setRetainInstance(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->restoreFromSavedInstanceState(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mListener:Lcom/google/android/finsky/fragments/SidecarFragment$Listener;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SidecarFragment;->notifyListener()V

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mCreated:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mCreated:Z

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "SidecarFragment.state"

    iget v1, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SidecarFragment.substate"

    iget v1, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mSubstate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "SidecarFragment.stateInstance"

    iget v1, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mStateInstance:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public removeAndSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/fragments/SidecarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/SidecarFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-object v0
.end method

.method protected restoreFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SidecarFragment.state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mState:I

    const-string v0, "SidecarFragment.substate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mSubstate:I

    const-string v0, "SidecarFragment.stateInstance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mStateInstance:I

    iget v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Restoring after serialization in RUNNING, resetting to INIT."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v2}, Lcom/google/android/finsky/fragments/SidecarFragment;->setState(II)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mListener:Lcom/google/android/finsky/fragments/SidecarFragment$Listener;

    iget-object v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mListener:Lcom/google/android/finsky/fragments/SidecarFragment$Listener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mCreated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SidecarFragment;->notifyListener()V

    :cond_0
    return-void
.end method

.method protected setState(II)V
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iput p1, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mState:I

    iput p2, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mSubstate:I

    iget v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mStateInstance:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mStateInstance:I

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SidecarFragment;->notifyListener()V

    return-void
.end method
