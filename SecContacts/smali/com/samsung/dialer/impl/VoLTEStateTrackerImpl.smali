.class public final Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;
.super Ljava/lang/Object;
.source "VoLTEStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$1;,
        Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$VoLTEStateChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListner:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$VoLTEStateChangedListener;

.field private mTracker:Lcom/samsung/dialer/volte/VoLTEStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KIS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoLTEStateTrackerImpl"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVoLTE()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->isSupportVoLTE(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->TAG:Ljava/lang/String;

    const-string v1, "no support VoLTEStateTraker"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/dialer/volte/VoLTEStateTracker;

    invoke-direct {v0}, Lcom/samsung/dialer/volte/VoLTEStateTracker;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mTracker:Lcom/samsung/dialer/volte/VoLTEStateTracker;

    new-instance v0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$VoLTEStateChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$VoLTEStateChangedListener;-><init>(Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$1;)V

    iput-object v0, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mListner:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$VoLTEStateChangedListener;

    goto :goto_0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->onReceiveForPeopleActivity(Z)V

    return-void
.end method

.method private isSupportVoLTE(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private onReceiveForPeopleActivity(Z)V
    .locals 6

    sget-object v4, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->TAG:Ljava/lang/String;

    const-string v5, "onReceiveForPeopleActivity"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tab-pager-calllog"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->setVolteEnabled(Z)V

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->volteUpdateSweepActionFeasibility()V

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v4, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tab-pager-all"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVoLteEnabled(Z)V

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->setVoLteEnabled(Z)V

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->configureSweepAction()V

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactListAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v4, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "tab-pager-favorite"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/contacts/list/ContactTileListFragment;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/ContactTileListFragment;->setVoLteEnabled(Z)V

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileListFragment;->configureSweepAction()V

    :cond_2
    return-void
.end method

.method public static preLoadCommonIMSInterface(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVoLTE()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->TAG:Ljava/lang/String;

    const-string v2, "preLoadCommonIMSInterface"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x7

    invoke-static {v1, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->TAG:Ljava/lang/String;

    const-string v2, "CommonIMSInterface is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVoLTE()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mListner:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$VoLTEStateChangedListener;

    invoke-virtual {p0}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->isEnableVoLTE()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$VoLTEStateChangedListener;->onReceive(Z)V

    goto :goto_0
.end method

.method public isEnableVoLTE()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVoLTE()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mTracker:Lcom/samsung/dialer/volte/VoLTEStateTracker;

    iget-object v1, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/volte/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public startTracking()V
    .locals 3

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVoLTE()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->TAG:Ljava/lang/String;

    const-string v1, "startTracking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mTracker:Lcom/samsung/dialer/volte/VoLTEStateTracker;

    iget-object v1, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mListner:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl$VoLTEStateChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dialer/volte/VoLTEStateTracker;->startTracking(Landroid/content/Context;Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;)V

    goto :goto_0
.end method

.method public stopTracking()V
    .locals 2

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableVoLTE()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->TAG:Ljava/lang/String;

    const-string v1, "stopTracking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->mTracker:Lcom/samsung/dialer/volte/VoLTEStateTracker;

    invoke-virtual {v0}, Lcom/samsung/dialer/volte/VoLTEStateTracker;->stopTracking()V

    goto :goto_0
.end method
