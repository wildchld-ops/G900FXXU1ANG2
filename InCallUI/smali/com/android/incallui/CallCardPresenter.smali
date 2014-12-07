.class public Lcom/android/incallui/CallCardPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$ModifyCallListener;
.implements Lcom/android/incallui/vt/VTStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardPresenter$CallCardUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$AccessoryEventListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/vt/VTStateListener;",
        "Lcom/android/incallui/InCallPresenter$ModifyCallListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;


# instance fields
.field private ecidListener:Lcom/android/incallui/EcidClient$Listener;

.field public isResizeMenuChecked:Z

.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mEndCallTime:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsDuringMRBT:Z

.field private mIsMRBT:Z

.field public mIsShowingModifyCallPromptDialog:Z

.field private mMRBTConnectTime:J

.field private mPreviousCallState:I

.field private mPreviousCallType:I

.field private mPrimary:Lcom/android/services/telephony/common/Call;

.field private mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondary:Lcom/android/services/telephony/common/Call;

.field private mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

.field private secondCallElapsedDriveLink:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->secondCallElapsedDriveLink:Z

    new-instance v0, Lcom/android/incallui/CallCardPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardPresenter$1;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->ecidListener:Lcom/android/incallui/EcidClient$Listener;

    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsDuringMRBT:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsMRBT:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->isResizeMenuChecked:Z

    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsShowingModifyCallPromptDialog:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/CallCardPresenter;->mMRBTConnectTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallType:I

    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mEndCallTime:Ljava/lang/String;

    new-instance v0, Lcom/android/incallui/CallCardPresenter$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardPresenter$4;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/CallCardPresenter$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$2;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallCardPresenter;Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p0    # Lcom/android/incallui/CallCardPresenter;
    .param p1    # Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onEcidUpdate(Lcom/android/services/telephony/common/Call;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardPresenter;

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p0    # Lcom/android/incallui/CallCardPresenter;

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method private areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z
    .locals 4
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Lcom/android/services/telephony/common/Call;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private checkSpecialCases(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z
    .locals 5
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Lcom/android/services/telephony/common/Call;

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "usa_cdma_smc_fac_req"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "support_awim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_1
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getAwimUpdateInfo()I

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method private conferenceSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z
    .locals 4
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Lcom/android/services/telephony/common/Call;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;
    .locals 4
    .param p1    # Lcom/android/incallui/CallList;
    .param p2    # Lcom/android/services/telephony/common/Call;
    .param p3    # Z

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getCdmaLatestCallFromId()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getCdmaEarliestCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eq v0, p2, :cond_3

    move-object v1, v0

    goto :goto_0

    :cond_3
    if-nez p3, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eq v0, p2, :cond_5

    move-object v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private getGatewayLabel()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getGatewayPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const v3, 0x7f0700a1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGatewayNumber()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getGatewayNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/CallCardPresenter;
    .locals 2

    const-class v1, Lcom/android/incallui/CallCardPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/CallCardPresenter;->sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallCardPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;

    :cond_0
    sget-object v0, Lcom/android/incallui/CallCardPresenter;->sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v1, " [DriveLink] set caller number "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isSafetyAssistanceMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    return-object v0
.end method

.method private hasOutgoingGatewayCall()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getGatewayNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getGatewayPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p0    # Lcom/android/services/telephony/common/Call;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGenericConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p0    # Lcom/android/services/telephony/common/Call;

    if-eqz p0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeStartSearch(Lcom/android/services/telephony/common/Call;Z)V
    .locals 3
    .param p1    # Lcom/android/services/telephony/common/Call;
    .param p2    # Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;ZZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToShowCallCardAnimation(Lcom/android/incallui/CallList;)Z
    .locals 14
    .param p1    # Lcom/android/incallui/CallList;

    const/4 v13, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    if-nez v2, :cond_0

    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v11, :cond_3

    :cond_2
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_3
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v11}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    if-eq v11, v13, :cond_4

    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v11}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_c

    :cond_4
    move v3, v10

    :goto_1
    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v11}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_5

    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v11}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/16 v12, 0x14

    if-eq v11, v12, :cond_5

    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v11}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_d

    :cond_5
    move v4, v10

    :goto_2
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v4, 0x0

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v11

    if-nez v11, :cond_e

    :cond_8
    move v7, v10

    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v11

    if-eq v11, v13, :cond_a

    :cond_9
    if-eqz v8, :cond_f

    invoke-virtual {v8}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v11

    if-ne v11, v13, :cond_f

    :cond_a
    move v6, v10

    :goto_4
    const/4 v5, 0x0

    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v11, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v11, :cond_10

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v11

    if-nez v11, :cond_10

    const/4 v5, 0x1

    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "needToShowCallCardAnimation, isPhotoAvailable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_11

    if-nez v5, :cond_11

    if-nez v3, :cond_b

    if-eqz v4, :cond_11

    :cond_b
    if-nez v6, :cond_11

    move v0, v10

    :goto_6
    move v9, v0

    goto/16 :goto_0

    :cond_c
    move v3, v9

    goto/16 :goto_1

    :cond_d
    move v4, v9

    goto :goto_2

    :cond_e
    move v7, v9

    goto :goto_3

    :cond_f
    move v6, v9

    goto :goto_4

    :cond_10
    const/4 v5, 0x0

    goto :goto_5

    :cond_11
    move v0, v9

    goto :goto_6
.end method

.method private needToShowCallerInfoCard(Lcom/android/incallui/CallList;)Z
    .locals 4
    .param p1    # Lcom/android/incallui/CallList;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    sget v3, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private needToShowExtraVolumeBtn()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    const-string v1, "extra_volume"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    goto :goto_0
.end method

.method private needToShowMenu()Z
    .locals 8

    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-eq v4, v6, :cond_8

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-eq v4, v7, :cond_8

    move v0, v2

    :goto_1
    const/4 v1, 0x0

    const-string v4, "ims_ui_for_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "QCIF"

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->getFrameSize(Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_2
    const-string v4, "support_safetycare"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_4
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_5
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    goto/16 :goto_0

    :cond_8
    move v0, v3

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-eq v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-eq v4, v7, :cond_3

    const/4 v1, 0x1

    goto :goto_2
.end method

.method private needToUpdatePhotoForCallState(I)Z
    .locals 2
    .param p1    # I

    iget v1, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallCardPresenter;->isIncomingOrOutgoing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->isIncomingOrOutgoing(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToUpdateSecondaryInfo(I)Z
    .locals 2
    .param p1    # I

    iget v1, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onEcidUpdate(Lcom/android/services/telephony/common/Call;)V
    .locals 2
    .param p1    # Lcom/android/services/telephony/common/Call;

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {p1, v0}, Lcom/android/incallui/EcidClient;->updateContactInfo(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->broadcastCallName(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :cond_0
    return-void
.end method

.method private setCityIdUi(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCityId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private showEnableCallerInfoCard(Lcom/android/incallui/CallList;)V
    .locals 9
    .param p1    # Lcom/android/incallui/CallList;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v7}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    move v2, v5

    :goto_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    move v1, v5

    :goto_1
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v4, v6, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showCallerInfoCard(ZZ)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->needToShowCallerInfoCard(Lcom/android/incallui/CallList;)Z

    move-result v5

    invoke-interface {v4, v5, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showCallerInfoCard(ZZ)V

    invoke-interface {v4, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->enableCallerInfoCard(Z)V

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    invoke-interface {v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->clearCallerInfoCard()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v7

    if-eqz v7, :cond_5

    move v1, v5

    :goto_3
    invoke-interface {v4, v6, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showCallerInfoCard(ZZ)V

    invoke-interface {v4, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->enableCallerInfoCard(Z)V

    goto :goto_2

    :cond_5
    move v1, v6

    goto :goto_3
.end method

.method private startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;ZZ)V
    .locals 2
    .param p1    # Lcom/android/services/telephony/common/CallIdentification;
    .param p2    # Z
    .param p3    # Z

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/CallCardPresenter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/incallui/CallCardPresenter$3;-><init>(Lcom/android/incallui/CallCardPresenter;Lcom/android/services/telephony/common/CallIdentification;Z)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    return-void
.end method

.method private updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 24

    sget-object v1, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update primary display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v2, "updatePrimaryDisplayInfo called but ui is null!"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v11

    if-eqz p1, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move/from16 v8, p2

    invoke-interface/range {v1 .. v12}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    iget-object v5, v5, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    iget-object v5, v5, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v5}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move/from16 v23, v0

    move-object v13, v2

    move-object v14, v3

    move v15, v4

    move/from16 v19, p2

    move/from16 v20, v9

    move/from16 v22, v11

    invoke-virtual/range {v12 .. v23}, Lcom/android/incallui/cover/CoverCall;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V

    :cond_2
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/EcidClient;->getCityId(Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/CallCardPresenter;->setCityIdUi(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v3, :cond_3

    if-eqz v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v2, :cond_6

    invoke-interface {v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->clearCallerInfoCard()V

    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showIncomingPopupForSecondCall(II)V

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v2, :cond_3

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/EcidClient;->getCityId(Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/CallCardPresenter;->setCityIdUi(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v1, v2, v0, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateCallerInfoCard(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showCallerInfoCard(ZZ)V

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move/from16 v8, p2

    invoke-interface/range {v1 .. v12}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v2}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move/from16 v19, p2

    move/from16 v20, v9

    move/from16 v22, v11

    invoke-virtual/range {v12 .. v23}, Lcom/android/incallui/cover/CoverCall;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V

    goto/16 :goto_3
.end method

.method private updateSecondaryDisplayInfo(Z)V
    .locals 9

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v3, "Update secondary display"

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-static {v3}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v7

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v3, :cond_4

    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSecondaryDisplayInfo() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    move v4, v6

    :goto_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v8, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move v6, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    move v4, v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v8, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move v1, v6

    move v6, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_0

    :cond_4
    move v3, v1

    move-object v4, v2

    move-object v5, v2

    move v6, p1

    move v8, v1

    invoke-interface/range {v0 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_0

    :cond_5
    move v4, v1

    goto :goto_2
.end method

.method private updateVideoView(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v1, "updateVideoView"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v1, "updateVideoView : Call type is not voice"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/16 v1, 0x12d

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/16 v1, 0x12f

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isSurfaceViewSwipe()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/16 v1, 0x64

    invoke-interface {v0, v1, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/16 v1, 0xca

    invoke-interface {v0, v1, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public accessibilityCallCard(Z)V
    .locals 2
    .param p1    # Z

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->accessibilityCallCard(Z)V

    :cond_0
    return-void
.end method

.method public addCallClicked()V
    .locals 1

    const-string v0, "addCallClicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bluetoothClicked()V
    .locals 2

    const-string v0, "bluetoothClicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->setAudioMode(I)V

    return-void
.end method

.method public changeVideoLocation()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->isDialpadVisible()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/16 v3, 0x12e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->changeVideoLocation(IZ)V

    goto :goto_0
.end method

.method public cleanupInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->sCallCardPresenter:Lcom/android/incallui/CallCardPresenter;

    return-void
.end method

.method public clearAnswerMemoViews()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->clearAnswerMemoViews()V

    return-void
.end method

.method public enableCallerInfoCard(Z)V
    .locals 4
    .param p1    # Z

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->enableCallerInfoCard(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public extraVolumeCliked()V
    .locals 1

    const-string v0, "extraVolumeCliked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/SoundEffect;->toggleExtraVolBtn()V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updateExtraVolumeButton()V

    return-void
.end method

.method public getEndCallTime()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mEndCallTime:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mEndCallTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShowingModifyCallDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mIsShowingModifyCallPromptDialog:Z

    return v0
.end method

.method public getPrimaryCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method public getPrimaryNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResizeChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->isResizeMenuChecked:Z

    return v0
.end method

.method public getSecondaryCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method public getSupportedAudio()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public getVideoCallDefaultResId(Lcom/android/services/telephony/common/Call;)I
    .locals 2

    const v0, 0x7f0203cc

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020134

    goto :goto_0

    :cond_1
    const v0, 0x7f02012e

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "QCIF"

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->getFrameSize(Lcom/android/services/telephony/common/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020135

    goto :goto_0

    :cond_2
    const v0, 0x7f020136

    goto :goto_0

    :cond_3
    const v0, 0x7f0203ce

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public holdButtonClicked()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallCommandClient;->hold(IZ)V

    return-void
.end method

.method public init(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;)V
    .locals 11
    .param p1    # Lcom/android/incallui/CallList;
    .param p2    # Lcom/android/services/telephony/common/Call;

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_3

    const-string v4, "Primary call is not null"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "usa_cdma_smc_fac_req"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "support_awim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getAwimUpdateInfo()I

    move-result v4

    if-ne v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v8

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-ne v4, v10, :cond_4

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v4, v6}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :goto_1
    const-string v4, "ecid_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->ecidListener:Lcom/android/incallui/EcidClient$Listener;

    invoke-static {p2, v4, v7, v8}, Lcom/android/incallui/EcidClient;->startEcidLookupQuery(Lcom/android/services/telephony/common/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/EcidClient$Listener;)V

    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    const-string v4, "common_volte_in"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, v4, :cond_a

    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v5}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "Secondary call is not null"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-ne v4, v10, :cond_8

    :goto_3
    invoke-direct {p0, v1, v6, v5}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;ZZ)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    move v4, v6

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-ne v4, v10, :cond_6

    move v4, v5

    :goto_5
    invoke-direct {p0, v0, v5, v4}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;ZZ)V

    goto :goto_1

    :cond_6
    move v4, v6

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v9, v5, v5}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    goto :goto_2

    :cond_8
    move v5, v6

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v9, v6, v5}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    goto :goto_4

    :cond_a
    iput-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    iput-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const-string v4, "Secondary call is null"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public isIncomingOrOutgoing(I)Z
    .locals 5
    .param p1    # I

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    const/4 v4, 0x4

    if-ne p1, v4, :cond_4

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x5

    if-eq p1, v4, :cond_1

    const/16 v4, 0x14

    if-eq p1, v4, :cond_1

    const/4 v4, 0x6

    if-ne p1, v4, :cond_5

    :cond_1
    move v1, v3

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public manageConferenceButtonClicked()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->displayManageConferencePanel(Z)V

    return-void
.end method

.method public mergeClicked()V
    .locals 2

    const-string v0, "mergeClicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->mergeMultiSim(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->merge()V

    goto :goto_0
.end method

.method public onAudioMode(I)V
    .locals 6
    .param p1    # I

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v0, p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCameraEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraEvent state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setIncomingHideButton(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCaptureAndRecordEvent(I)V
    .locals 6

    const v5, 0x7f0701fa

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureAndRecordEvent state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070173

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070172

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070171

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->showToastLong(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showFarEndCaptureAnimation()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070170

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->showToastLong(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showNearEndCaptureAnimation()V

    goto :goto_0

    :pswitch_2
    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->showToastLong(I)V

    goto :goto_0

    :pswitch_3
    invoke-static {v5}, Lcom/android/incallui/InCallUtils;->showToastLong(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCastingEvent(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onCoverStatusChanged(Z)V
    .locals 13
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v7

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v10

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v0}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v9, v9, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    iget-object v11, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v11, v11, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual/range {v0 .. v11}, Lcom/android/incallui/cover/CoverCall;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/graphics/drawable/Drawable;ZZZZZ)V

    :cond_0
    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Lcom/android/incallui/ContactInfoCache;->updateDefaultCachePhoto(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onHdVoiceStatusChange(Z)V
    .locals 2
    .param p1    # Z

    const-string v1, "hdvoice_call_status"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHDVoiceCallIcon(Z)V

    :cond_0
    return-void
.end method

.method public onHoldCallStateChange(Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 7
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v5, :cond_1

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    const/16 v5, 0x400

    invoke-virtual {v1, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHoldCallState()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v4, v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showModifyCall(Z)V

    :goto_2
    return-void

    :cond_1
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v5, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-direct {p0, v2, v6, v0}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v3

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v5, :cond_3

    invoke-direct {p0, v2, v6, v4}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v3

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v5, :cond_0

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_1
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/services/telephony/common/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onIncomingModifyCall(I)V
    .locals 3

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingModifyCall() callType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateIncomingModifyCall()V

    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onResultModifyCallRequest(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResultModifyCallRequest() callType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateModifyCallRequest()V

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->updateExtraVolumeButton()V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 46
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/CallList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStateChange() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v36, 0x0

    const/16 v39, 0x0

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_2c

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v36

    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Primary call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Secondary call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v4, v1}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-nez v4, :cond_2f

    const/16 v37, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v4, v1}, Lcom/android/incallui/CallCardPresenter;->conferenceSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-nez v4, :cond_30

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v4, v1}, Lcom/android/incallui/CallCardPresenter;->areCallsSame(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-nez v4, :cond_31

    const/16 v40, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v4, v1}, Lcom/android/incallui/CallCardPresenter;->checkSpecialCases(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;)Z

    move-result v30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "primaryChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", secondaryChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", conferenceChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSpecialCases="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_3
    const-string v4, "ims_resize_screen"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/incallui/CallCardPresenter;->isResizeMenuChecked:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/incallui/CallCardPresenter;->isResizeMenuChecked:Z

    :cond_4
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStateChange mPreviousCallState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPrimary.getState()  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    invoke-static {v4}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v4

    if-eqz v4, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_32

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallCharge(Z)V

    :cond_5
    :goto_5
    const-string v4, "ecid_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->ecidListener:Lcom/android/incallui/EcidClient$Listener;

    invoke-static {v4, v5, v7, v8}, Lcom/android/incallui/EcidClient;->startEcidLookupQuery(Lcom/android/services/telephony/common/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/EcidClient$Listener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/incallui/CallCardPresenter;->ecidListener:Lcom/android/incallui/EcidClient$Listener;

    invoke-static {v4, v5, v7, v8}, Lcom/android/incallui/EcidClient;->startEcidLookupQuery(Lcom/android/services/telephony/common/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/EcidClient$Listener;)V

    :cond_6
    const/16 v33, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->needToUpdatePhotoForCallState(I)Z

    move-result v33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->needToUpdateSecondaryInfo(I)Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallType:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v5

    if-eq v4, v5, :cond_8

    const-string v4, "ims_ui_for_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Lcom/android/incallui/ContactInfoCache;->updateDefaultCachePhoto(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)V

    :cond_7
    const/16 v33, 0x1

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallType:I

    :cond_9
    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceStateChanged()Z

    move-result v32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToUpdateContactInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/incallui/CallCardPresenter;->needToShowCallCardAnimation(Lcom/android/incallui/CallList;)Z

    move-result v4

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_33

    :cond_b
    const/4 v4, 0x1

    :goto_6
    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->startCallCardAnimation(Z)V

    :goto_7
    if-eqz v37, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_35

    const/4 v4, 0x1

    :goto_8
    invoke-static {v5, v7, v4}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v5}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;Z)V

    const-string v4, "ecid_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v4}, Lcom/android/incallui/EcidClient;->onCallStateChange(Lcom/android/services/telephony/common/Call;)V

    :cond_c
    invoke-direct/range {p0 .. p2}, Lcom/android/incallui/CallCardPresenter;->updateVideoView(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    if-nez v4, :cond_41

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    :cond_e
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/incallui/CallCardPresenter;->showEnableCallerInfoCard(Lcom/android/incallui/CallList;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_45

    const-string v4, "Starting the calltime timer"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v4, v7, v8}, Lcom/android/incallui/CallTimer;->start(J)Z

    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_47

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v4

    sget v5, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v4, v5, :cond_46

    const/4 v6, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayLabel()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v3 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    iget-object v4, v4, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    iget-object v4, v4, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v4}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayLabel()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v12

    move v10, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/incallui/cover/CoverCall;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v4}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-nez v4, :cond_48

    const/16 v42, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v16

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageAddCall(ZZ)V

    const-string v4, "webex_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isWebExEnabled()Z

    move-result v31

    if-eqz v31, :cond_10

    move/from16 v0, v31

    invoke-interface {v3, v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showWebEx(Z)V

    :cond_10
    const-string v4, "voice_call_recording"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_49

    if-eqz v38, :cond_11

    invoke-virtual/range {v38 .. v38}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual/range {v38 .. v38}, Lcom/android/incallui/PhoneVoiceRecorderManager;->resumeRecord()V

    :cond_11
    :goto_f
    const/16 v44, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4a

    :cond_12
    const/16 v19, 0x1

    :goto_10
    move/from16 v0, v44

    move/from16 v1, v19

    invoke-interface {v3, v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageRecord(ZZ)V

    :cond_13
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4b

    const/16 v25, 0x1

    :goto_11
    move/from16 v0, v25

    invoke-interface {v3, v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageAnswerMemoRecord(Z)V

    :cond_14
    const-string v4, "cnap_supplementary_service"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/16 v41, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_15

    const/16 v41, 0x0

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    move/from16 v0, v41

    invoke-interface {v3, v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCnapName(ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    iget-object v0, v4, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    invoke-virtual/range {v22 .. v22}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual/range {v22 .. v22}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    move/from16 v0, v41

    invoke-virtual {v4, v0, v5}, Lcom/android/incallui/cover/CoverCall;->setPrimaryCnapName(ZLjava/lang/String;)V

    :cond_16
    const-string v4, "ims_call_message"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callMessage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_18

    :cond_17
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCnapName(ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    iget-object v0, v4, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    invoke-virtual/range {v22 .. v22}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual/range {v22 .. v22}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v7, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lcom/android/incallui/cover/CoverCall;->setPrimaryCnapName(ZLjava/lang/String;)V

    :cond_18
    const-string v4, "cdnip_supplementary_service"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4c

    :cond_19
    const/16 v41, 0x1

    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    move/from16 v0, v41

    invoke-interface {v3, v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCdnipNumber(ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    iget-object v0, v4, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1a

    invoke-virtual/range {v22 .. v22}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual/range {v22 .. v22}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    move/from16 v0, v41

    invoke-virtual {v4, v0, v5}, Lcom/android/incallui/cover/CoverCall;->setPrimaryCdnipNumber(ZLjava/lang/String;)V

    :cond_1a
    const-string v4, "ims_ui_for_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-eqz v4, :cond_4d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4d

    const/16 v43, 0x1

    :goto_13
    move/from16 v0, v43

    invoke-interface {v3, v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateConfUI(Z)V

    :cond_1b
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const/16 v4, 0x400

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-virtual/range {v36 .. v36}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4e

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getHoldCallState()Z

    move-result v4

    if-nez v4, :cond_4e

    const/4 v13, 0x1

    :goto_14
    invoke-interface {v3, v13}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showModifyCall(Z)V

    :cond_1c
    invoke-static/range {v36 .. v36}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHDVoiceIcon(Z)V

    invoke-virtual/range {v36 .. v36}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isWBMode(I)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHDIcon(Z)V

    const-string v4, "hdvoice_call_status"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallCommandClient;->getHdVoiceStatus()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHDVoiceCallIcon(Z)V

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->needToShowMenu()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showMenu(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->needToShowExtraVolumeBtn()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showExtraVolButton(Z)V

    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    if-eqz v3, :cond_1e

    invoke-static {}, Lcom/android/incallui/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showExtraVolButton(Z)V

    :cond_1e
    const-string v4, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v15

    if-eqz v15, :cond_1f

    invoke-virtual {v15}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v3, v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->infoVoiceRecording(I)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_20

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showIncomingPopupForSecondCall(II)V

    :cond_20
    const-string v4, "extended_restrict_international_call"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/incallui/InCallUtils;->isIntIncomingCall(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showIncomingMsgForInternationalCall(I)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v18

    const-string v4, "sin_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-static {}, Lcom/android/incallui/InCallUtils;->XSP_IsSingtel()Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_22
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVolteIconPossible()Z

    move-result v4

    if-eqz v4, :cond_23

    const/16 v18, 0x0

    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v28

    if-nez v28, :cond_4f

    if-eqz v18, :cond_4f

    const/4 v4, 0x1

    :goto_15
    move/from16 v0, v20

    invoke-interface {v3, v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageSecondaryControlBtn(ZZ)V

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v4}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_50

    const/16 v29, 0x1

    :goto_16
    if-nez v17, :cond_25

    if-eqz v45, :cond_51

    :cond_25
    const/4 v4, 0x1

    :goto_17
    move/from16 v0, v29

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageHoldBtn(ZZZZ)V

    :cond_26
    const-string v4, "phone_number_locator"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryPhoneNumberLocator(Ljava/lang/String;)V

    :cond_27
    const-string v4, "ctc_call_time_duration"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCardName(I)V

    :cond_28
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getSimId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimarySimIconLabel(I)V

    :cond_29
    const-string v4, "usa_cdma_emergency_concept"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eqz v36, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v3, v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setECMCardTitle(Lcom/android/services/telephony/common/Call;I)V

    :cond_2a
    const-string v4, "eri_info_label_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    if-eqz v36, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    move-object/from16 v0, v36

    invoke-interface {v3, v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setEriInfo(Lcom/android/services/telephony/common/Call;I)V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->manageMultiTouchStub(Z)V

    goto/16 :goto_0

    :cond_2c
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_2d

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v36

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v5}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v39

    goto/16 :goto_1

    :cond_2d
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_2e

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/incallui/AnswerPresenter;->dismissCallRoamingGuardDialog(Z)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v5}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v36

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2, v4}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v39

    goto/16 :goto_1

    :cond_2e
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/incallui/CallCardPresenter;->isResizeMenuChecked:Z

    invoke-interface {v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->dismissModifyCallDialog()V

    goto/16 :goto_1

    :cond_2f
    const/16 v37, 0x0

    goto/16 :goto_2

    :cond_30
    const/16 v21, 0x0

    goto/16 :goto_3

    :cond_31
    const/16 v40, 0x0

    goto/16 :goto_4

    :cond_32
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    invoke-static {v4}, Lcom/android/services/telephony/common/Call$State;->isIncoming(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallCharge(Z)V

    goto/16 :goto_5

    :cond_33
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_34
    invoke-interface {v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->stopCallCardAnimation()V

    goto/16 :goto_7

    :cond_35
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_36
    if-eqz v21, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v5}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto/16 :goto_9

    :cond_37
    if-eqz v30, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_38

    const/4 v4, 0x1

    :goto_18
    invoke-static {v5, v7, v4}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v5}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto/16 :goto_9

    :cond_38
    const/4 v4, 0x0

    goto :goto_18

    :cond_39
    if-eqz v33, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_3f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToUpdateInfo for CallState..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v4, :cond_3a

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0203cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    :cond_3a
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move-object/from16 v0, v35

    invoke-interface {v4, v0, v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    iget-object v4, v4, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v4, :cond_3b

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    iget-object v4, v4, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v4}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    move-object/from16 v0, v35

    invoke-virtual {v4, v0, v5}, Lcom/android/incallui/cover/CoverCall;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    :cond_3b
    invoke-direct/range {p0 .. p2}, Lcom/android/incallui/CallCardPresenter;->updateVideoView(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto/16 :goto_9

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v35, 0x0

    goto :goto_19

    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/incallui/CallCardPresenter;->getVideoCallDefaultResId(Lcom/android/services/telephony/common/Call;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    goto :goto_19

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0203ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    goto :goto_19

    :cond_3f
    if-eqz v32, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_d

    const-string v4, "ims_ui_for_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v4, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Lcom/android/incallui/ContactInfoCache;->updateDefaultCachePhoto(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)V

    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;Z)V

    goto/16 :goto_9

    :cond_41
    if-nez v40, :cond_42

    if-nez v24, :cond_42

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_42
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v4, :cond_43

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v27

    :cond_43
    if-nez v27, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_44

    const/4 v4, 0x1

    :goto_1a
    invoke-static {v5, v7, v4}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;Z)V

    const-string v4, "ecid_enable"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-static {v4}, Lcom/android/incallui/EcidClient;->onCallStateChange(Lcom/android/services/telephony/common/Call;)V

    goto/16 :goto_a

    :cond_44
    const/4 v4, 0x0

    goto :goto_1a

    :cond_45
    const-string v4, "Canceling the calltime timer"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v4}, Lcom/android/incallui/CallTimer;->cancel()V

    goto/16 :goto_b

    :cond_46
    const/4 v6, 0x0

    goto/16 :goto_c

    :cond_47
    const/4 v8, 0x1

    sget-object v9, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    invoke-interface/range {v7 .. v12}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    iget-object v4, v4, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    iget-object v4, v4, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v4}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v7

    const/4 v8, 0x1

    sget-object v9, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/android/incallui/cover/CoverCall;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_48
    const/16 v42, 0x0

    goto/16 :goto_e

    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_11

    if-eqz v38, :cond_11

    invoke-virtual/range {v38 .. v38}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isPaused()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual/range {v38 .. v38}, Lcom/android/incallui/PhoneVoiceRecorderManager;->pauseRecord()V

    goto/16 :goto_f

    :cond_4a
    const/16 v19, 0x0

    goto/16 :goto_10

    :cond_4b
    const/16 v25, 0x0

    goto/16 :goto_11

    :cond_4c
    const/16 v41, 0x0

    goto/16 :goto_12

    :cond_4d
    const/16 v43, 0x0

    goto/16 :goto_13

    :cond_4e
    const/4 v13, 0x0

    goto/16 :goto_14

    :cond_4f
    const/4 v4, 0x0

    goto/16 :goto_15

    :cond_50
    const/16 v29, 0x0

    goto/16 :goto_16

    :cond_51
    const/4 v4, 0x0

    goto/16 :goto_17
.end method

.method public onSupportedAudioMode(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->supportedAudioModeChanged()V

    :cond_0
    return-void
.end method

.method public onSurfaceAvailable(ILandroid/graphics/SurfaceTexture;II)V
    .locals 2

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceAvailable"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->setCurrentOrientation()V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onSurfaceDestroyed(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/incallui/vt/VideoCallManager;->setFarEndSurface(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/incallui/vt/VideoCallManager;->setNearEndSurface(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 2
    .param p1    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/vt/VideoCallManager;->addListener(Lcom/android/incallui/vt/VTStateListener;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addModifyCallListener(Lcom/android/incallui/InCallPresenter$ModifyCallListener;)V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showExtraVolButton(Z)V

    invoke-static {}, Lcom/android/incallui/AnswerMemoUtils;->isGuidancePlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->showGuidancePlayingView()V

    :cond_3
    :goto_0
    const-string v0, "support_photo_ring"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updatePhotoringState()V

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->showAnswerMemoRecordingView()V

    goto :goto_0
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 0

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 2
    .param p1    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/vt/VideoCallManager;->removeListener(Lcom/android/incallui/vt/VTStateListener;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeModifyCallListener(Lcom/android/incallui/InCallPresenter$ModifyCallListener;)V

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/CallCardPresenter;->mPreviousCallType:I

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onVideoCallEvent(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoCallEvent state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/vt/VideoCallManager;->setFarFrameReady(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isFarFrameReady()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateFarEndPreparingAnimationImage(Z)V

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsDuringMRBT:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v3, p0, Lcom/android/incallui/CallCardPresenter;->mIsMRBT:Z

    iput-boolean v3, p0, Lcom/android/incallui/CallCardPresenter;->mIsDuringMRBT:Z

    goto :goto_0

    :pswitch_4
    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsDuringMRBT:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/CallCardPresenter;->mMRBTConnectTime:J

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    goto :goto_0

    :pswitch_6
    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsMRBT:Z

    iput-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsDuringMRBT:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onVideoCallEvent(ILsiso/vt/VideoTelephonyData;)V
    .locals 0
    .param p1    # I
    .param p2    # Lsiso/vt/VideoTelephonyData;

    return-void
.end method

.method public requestModifyCall(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestModifyCall callType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/CallCommandClient;->requestModifyCall(II)V

    return-void
.end method

.method public secondCallElapsed(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->secondCallElapsedDriveLink:Z

    return-void
.end method

.method public setEndCallTime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mEndCallTime:Ljava/lang/String;

    return-void
.end method

.method public setIncomingHideShow()V
    .locals 3

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/vt/VideoCallManager;->isCameraRestricted()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "camera is not allowed, return"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f070138

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->showToastShort(I)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setIncomingHideButton(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->sendStillImage()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->sendLiveVideo()V

    goto :goto_0
.end method

.method public setIsShowingModifyCallDialog(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->mIsShowingModifyCallPromptDialog:Z

    const-string v0, "ims_ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v0}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/cover/CoverCall;->updateModifyCallState(Z)V

    :cond_0
    return-void
.end method

.method public setResizeChecked(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->isResizeMenuChecked:Z

    return-void
.end method

.method public setSurfaceViewSwipe(Z)V
    .locals 1
    .param p1    # Z

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/vt/VideoCallManager;->setSurfaceViewSwipe(Z)V

    :cond_0
    return-void
.end method

.method public showAnswerMemoRecordingView()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showAnswerMemoRecordingView()V

    return-void
.end method

.method public showCallerInfoCard(Z)V
    .locals 3
    .param p1    # Z

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->needToShowCallerInfoCard(Lcom/android/incallui/CallList;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showCallerInfoCard(ZZ)V

    :cond_0
    return-void
.end method

.method public showGuidancePlayingView()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showGuidancePlayingView()V

    return-void
.end method

.method public startRender(Z)V
    .locals 1
    .param p1    # Z

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/vt/VideoCallManager;->startRender(Z)V

    :cond_0
    return-void
.end method

.method public swapClicked()V
    .locals 2

    const-string v0, "swapClicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->swapMultiSim(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->swap()V

    goto :goto_0
.end method

.method public updateCallTime()V
    .locals 9

    const/4 v5, 0x2

    const-wide/16 v7, 0x3e8

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    if-ne v1, v5, :cond_0

    const-string v1, "vt_multimedia_ringback_tone_timer"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsDuringMRBT:Z

    if-eqz v1, :cond_4

    :cond_0
    if-eqz v0, :cond_1

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v1}, Lcom/android/incallui/CallTimer;->cancel()V

    :cond_2
    :goto_0
    const-string v1, "voice_call_recording"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateRecordTime()V

    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateAnswerMemoRecordTime()V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v1

    const-string v3, "feature_ctc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v4

    if-ne v4, v5, :cond_5

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-string v3, "vt_multimedia_ringback_tone_timer"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/incallui/CallCardPresenter;->mIsMRBT:Z

    if-eqz v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/incallui/CallCardPresenter;->mMRBTConnectTime:J

    sub-long/2addr v1, v3

    :cond_6
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v3

    if-eqz v3, :cond_9

    div-long v3, v1, v7

    invoke-static {v3, v4, v6}, Lcom/android/incallui/PhoneDateUtils;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;J)V

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    iget-object v3, v3, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    iget-object v3, v3, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v3}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v3

    div-long v4, v1, v7

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v1, v2}, Lcom/android/incallui/cover/CoverCall;->setPrimaryCallElapsedTime(ZLjava/lang/String;J)V

    :cond_7
    iget-boolean v3, p0, Lcom/android/incallui/CallCardPresenter;->secondCallElapsedDriveLink:Z

    if-eqz v3, :cond_8

    div-long/2addr v1, v7

    invoke-static {v1, v2, v6}, Lcom/android/incallui/PhoneDateUtils;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondCallElapsedTime(ZLjava/lang/String;)V

    :cond_8
    const-string v1, "ctc_call_time_duration"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getLineCtrlEvent()B

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setLineControlEvent(B)V

    goto/16 :goto_0

    :cond_9
    div-long v3, v1, v7

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;J)V

    goto :goto_1
.end method

.method public updateCallerInfoCard(IZ)V
    .locals 3
    .param p1    # I
    .param p2    # Z

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCallerInfoCardMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-interface {v0, p1, v1, p2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateCallerInfoCard(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :cond_0
    return-void
.end method

.method public updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V
    .locals 0
    .param p1    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2    # Z
    .param p3    # Z

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, p1, p3}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, p3}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    goto :goto_0
.end method

.method public updateExtraVolumeButton()V
    .locals 1

    const-string v0, "updateExtraVolumeButton"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->updateExtraVolumeStatus()V

    :cond_0
    return-void
.end method

.method public updateVideoView()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/CallCardPresenter;->updateVideoView(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public webExClicked()V
    .locals 1

    const-string v0, "webExClicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->webEx()V

    return-void
.end method
