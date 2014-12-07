.class public abstract Lcom/google/android/finsky/fragments/PageFragment;
.super Landroid/support/v4/app/Fragment;
.source "PageFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;
.implements Lcom/google/android/finsky/layout/play/RootUiElementNode;


# instance fields
.field protected mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected mContext:Landroid/content/Context;

.field protected mDataView:Landroid/view/ViewGroup;

.field private mDfeAccount:Ljava/lang/String;

.field protected mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mImpressionHandler:Landroid/os/Handler;

.field private mImpressionId:J

.field private mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

.field protected mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

.field protected mRefreshRequired:Z

.field protected mSaveInstanceStateCalled:Z

.field private mTheme:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const v0, 0x7f0c0051

    iput v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    invoke-static {}, Lcom/google/android/finsky/analytics/FinskyEventLog;->getNextImpressionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mImpressionId:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/fragments/PageFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public canChangeFragmentManagerState()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mImpressionHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mImpressionId:J

    invoke-static {v0, v1, v2, p0, p1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->rootImpression(Landroid/os/Handler;JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method public flushImpression()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mImpressionHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mImpressionId:J

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->flushImpression(Landroid/os/Handler;JLcom/google/android/finsky/layout/play/RootUiElementNode;)V

    return-void
.end method

.method protected abstract getLayoutRes()I
.end method

.method public final getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getToc()Lcom/google/android/finsky/api/model/DfeToc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method protected abstract isDataReady()Z
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/fragments/PageFragmentHost;

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget-object v2, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDfeAccount:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/finsky/fragments/PageFragmentHost;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onInitViewBinders()V

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    const-string v1, "Views bound"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mImpressionHandler:Landroid/os/Handler;

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.PageFragment.dfeAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDfeAccount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.PageFragment.toc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/DfeToc;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const v2, 0x7f080139

    const/4 v8, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_1

    if-eqz p3, :cond_0

    const-string v0, "finsky.PageFragment.theme"

    iget v3, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    :cond_0
    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v3, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    invoke-direct {v7, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :cond_1
    const v0, 0x7f04007f

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ContentFrame;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getLayoutRes()I

    move-result v0

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/finsky/layout/ContentFrame;->setDataLayout(Landroid/view/LayoutInflater;II)V

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/ContentFrame;->getDataLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDataView:Landroid/view/ViewGroup;

    iput-boolean v8, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    const v3, 0x7f0801b9

    const v4, 0x7f08006b

    const/4 v6, 0x2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;IIILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;I)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    const-string v0, "Views inflated"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public onDataChanged()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->switchToData()V

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->rebindViews()V

    const-string v0, "Views rebound"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDataView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->canChangeFragmentManagerState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/fragments/PageFragment;->switchToError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract onInitViewBinders()V
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    invoke-static {p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->startNewImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    :cond_0
    return-void
.end method

.method public onRetry()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "finsky.PageFragment.theme"

    iget v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    return-void
.end method

.method public rebindActionBar()V
    .locals 0

    return-void
.end method

.method protected abstract rebindViews()V
.end method

.method public refresh()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->requestData()V

    const-string v0, "requestData called"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public refreshOnResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    return-void
.end method

.method protected abstract requestData()V
.end method

.method protected setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected setArgument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setArgument(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setDfeAccount(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "finsky.PageFragment.dfeAccount"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 1

    const-string v0, "finsky.PageFragment.toc"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected setTheme(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    return-void
.end method

.method public startNewImpression()V
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/analytics/FinskyEventLog;->getNextImpressionId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mImpressionId:J

    return-void
.end method

.method protected switchToBlank()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToBlankMode()V

    return-void
.end method

.method protected switchToData()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    return-void
.end method

.method protected switchToError(Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    move v1, v4

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    instance-of v2, v0, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isStateSaved()Z

    move-result v3

    :cond_0
    const-string v6, "mSaveInstanceStateCalled=[%s], activityNull=[%s], isAuthenticatedActivity=[%s], isStateSaved=[%s]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-boolean v8, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v7, v4

    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected switchToLoading()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    return-void
.end method
