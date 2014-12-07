.class public Lcom/android/phone/TPhoneService;
.super Landroid/app/Service;
.source "TPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/TPhoneService$7;,
        Lcom/android/phone/TPhoneService$PackageInstallObserver;,
        Lcom/android/phone/TPhoneService$TBroadcastReceiver;,
        Lcom/android/phone/TPhoneService$QueryHandler;,
        Lcom/android/phone/TPhoneService$PhoneService;
    }
.end annotation


# static fields
.field private static sMe:Lcom/android/phone/TPhoneService;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private apps:Lcom/android/phone/PhoneGlobals;

.field private conferenceCallMgr:Lcom/android/phone/IMSConferenceCallMgr;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverState:I

.field mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mDisconnectingCall:Lcom/skt/prod/phone/TCall;

.field private mHandler:Landroid/os/Handler;

.field private mInstallState:I

.field private mIsAppSwitchSystemKeyEventRequested:Z

.field private mIsSKTReady:Ljava/lang/Boolean;

.field private mPendingDisplayTPhone:Z

.field private mPrevFgCallState:Lcom/android/internal/telephony/Call$State;

.field private mQueryHandler:Lcom/android/phone/TPhoneService$QueryHandler;

.field private mRequestConnection:Lcom/android/internal/telephony/Connection;

.field mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private mSyncListener:Ljava/lang/Object;

.field private mTBroadcastReceiver:Lcom/android/phone/TPhoneService$TBroadcastReceiver;

.field private mTDialPath:Ljava/lang/String;

.field public mTPhoneInstallHandler:Landroid/os/Handler;

.field private final mTPhoneListners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/ITPhoneEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTPhonePath:Ljava/lang/String;

.field private mTPhoneService:Lcom/android/phone/TPhoneService$PhoneService;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private recorder:Lcom/android/phone/PhoneVoiceRecorder;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "TPhoneService"

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mIsSKTReady:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/phone/TPhoneService$PhoneService;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/TPhoneService$PhoneService;-><init>(Lcom/android/phone/TPhoneService;Lcom/android/phone/TPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneService:Lcom/android/phone/TPhoneService$PhoneService;

    new-instance v0, Lcom/android/phone/TPhoneService$TBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/TPhoneService$TBroadcastReceiver;-><init>(Lcom/android/phone/TPhoneService;Lcom/android/phone/TPhoneService$1;)V

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mTBroadcastReceiver:Lcom/android/phone/TPhoneService$TBroadcastReceiver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    iput-object v1, p0, Lcom/android/phone/TPhoneService;->mRequestConnection:Lcom/android/internal/telephony/Connection;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mPrevFgCallState:Lcom/android/internal/telephony/Call$State;

    iput-object v1, p0, Lcom/android/phone/TPhoneService;->mDisconnectingCall:Lcom/skt/prod/phone/TCall;

    iput-boolean v2, p0, Lcom/android/phone/TPhoneService;->mPendingDisplayTPhone:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/TPhoneService;->mCoverState:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/phone/TPhoneService;->mInstallState:I

    new-instance v0, Lcom/android/phone/TPhoneService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/TPhoneService$2;-><init>(Lcom/android/phone/TPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/phone/TPhoneService$3;

    invoke-direct {v0, p0}, Lcom/android/phone/TPhoneService$3;-><init>(Lcom/android/phone/TPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/TPhoneService$4;

    invoke-direct {v0, p0}, Lcom/android/phone/TPhoneService$4;-><init>(Lcom/android/phone/TPhoneService;)V

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneInstallHandler:Landroid/os/Handler;

    return-void
.end method

.method private CancelTphoneInstallNotification()V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private CreateTphoneInstallNotification()V
    .locals 6

    const v5, 0x7f090a05

    const v4, 0x7f090a04

    const v3, 0x7f02022f

    const/4 v2, 0x1

    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x190

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private InstallTDialPkg()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/TPhoneService$6;

    invoke-direct {v1, p0}, Lcom/android/phone/TPhoneService$6;-><init>(Lcom/android/phone/TPhoneService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private InstallTPhonePkg()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/TPhoneService$5;

    invoke-direct {v1, p0}, Lcom/android/phone/TPhoneService$5;-><init>(Lcom/android/phone/TPhoneService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/TPhoneService;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0    # Lcom/android/phone/TPhoneService;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/TPhoneService;)Lcom/skt/prod/phone/TCall;
    .locals 1
    .param p0    # Lcom/android/phone/TPhoneService;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mDisconnectingCall:Lcom/skt/prod/phone/TCall;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/phone/TPhoneService;Lcom/skt/prod/phone/TCall;)Lcom/skt/prod/phone/TCall;
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Lcom/skt/prod/phone/TCall;

    iput-object p1, p0, Lcom/android/phone/TPhoneService;->mDisconnectingCall:Lcom/skt/prod/phone/TCall;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/phone/TPhoneService;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/TPhoneService;->mPendingDisplayTPhone:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/TPhoneService;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->sendNewIncomingCall(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/TPhoneService;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/TPhoneService;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->sendDisconnectCall(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/TPhoneService;Landroid/os/AsyncResult;C)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Landroid/os/AsyncResult;
    .param p2    # C

    invoke-direct {p0, p1, p2}, Lcom/android/phone/TPhoneService;->sendPostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/TPhoneService;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->sendSuppServiceFailed(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/TPhoneService;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->handleModifyCallRequest(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/phone/TPhoneService;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/Connection;
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Lcom/android/internal/telephony/Connection;

    iput-object p1, p0, Lcom/android/phone/TPhoneService;->mRequestConnection:Lcom/android/internal/telephony/Connection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/TPhoneService;)I
    .locals 1
    .param p0    # Lcom/android/phone/TPhoneService;

    iget v0, p0, Lcom/android/phone/TPhoneService;->mCoverState:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/TPhoneService;I)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->sendVideoCallResult(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/TPhoneService;I)I
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/TPhoneService;->mCoverState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/TPhoneService;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->sendSuppServiceNotification(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/TPhoneService;I)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->requestModifyCall(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/TPhoneService;Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Lcom/android/internal/telephony/Call;

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/TPhoneService;)Lcom/android/phone/PhoneVoiceRecorder;
    .locals 1
    .param p0    # Lcom/android/phone/TPhoneService;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/TPhoneService;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/phone/TPhoneService;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/phone/TPhoneService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0    # Lcom/android/phone/TPhoneService;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/phone/TPhoneService;Lcom/android/phone/ITPhoneEventListener;)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Lcom/android/phone/ITPhoneEventListener;

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->initRegisterListener(Lcom/android/phone/ITPhoneEventListener;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/phone/TPhoneService;)Ljava/lang/Boolean;
    .locals 1
    .param p0    # Lcom/android/phone/TPhoneService;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mIsSKTReady:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/phone/TPhoneService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/phone/TPhoneService;->mIsSKTReady:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/phone/TPhoneService;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/TPhoneService;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/TPhoneService;I)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->sendCoverStateChanged(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/phone/TPhoneService;)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->InstallTPhonePkg()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/phone/TPhoneService;)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->InstallTDialPkg()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/phone/TPhoneService;)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->CancelTphoneInstallNotification()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/phone/TPhoneService;)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->CreateTphoneInstallNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/TPhoneService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0    # Lcom/android/phone/TPhoneService;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/TPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Landroid/bluetooth/BluetoothHeadset;

    iput-object p1, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$500(I)Ljava/lang/String;
    .locals 1
    .param p0    # I

    invoke-static {p0}, Lcom/android/phone/TPhoneService;->mHandlerToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/TPhoneService;)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->sendPhoneState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0    # Lcom/android/phone/TPhoneService;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/TPhoneService;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p0    # Lcom/android/phone/TPhoneService;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mPrevFgCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/phone/TPhoneService;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call$State;
    .locals 0
    .param p0    # Lcom/android/phone/TPhoneService;
    .param p1    # Lcom/android/internal/telephony/Call$State;

    iput-object p1, p0, Lcom/android/phone/TPhoneService;->mPrevFgCallState:Lcom/android/internal/telephony/Call$State;

    return-object p1
.end method

.method private dumpBluetoothState()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v2, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->isBluetoothAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->isBluetoothAudioConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->isBluetoothAudioConnectedOrPending()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.getCurrentDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset.State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= BluetoothHeadset audio connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "= mBluetoothHeadset is null"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v2, "= mBluetoothAdapter is null; device is not BT capable"

    invoke-direct {p0, v2, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;
    .locals 3
    .param p1    # Lcom/android/internal/telephony/Connection;

    invoke-static {}, Lcom/skt/prod/phone/TCall;->obtain()Lcom/skt/prod/phone/TCall;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/skt/prod/phone/TCall;->address:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/skt/prod/phone/TCall;->connectTime:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/skt/prod/phone/TCall;->creatTime:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    iput-boolean v1, v0, Lcom/skt/prod/phone/TCall;->isInComing:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/skt/prod/phone/TCall;->lettering:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    iput v1, v0, Lcom/skt/prod/phone/TCall;->numberPresentation:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/skt/prod/phone/TCall;->state:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/skt/prod/phone/TCall;->virtualAddress:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/skt/prod/phone/TCall;->disconnectCause:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->getDisconnectCause(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/skt/prod/phone/TCall;->disconnectCasueMessage:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/skt/prod/phone/TCall;->supportVideoCall:Z

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->conferenceCallMgr:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->conferenceCallMgr:Lcom/android/phone/IMSConferenceCallMgr;

    iget v1, v1, Lcom/android/phone/IMSConferenceCallMgr;->lastLogCount:I

    iput v1, v0, Lcom/skt/prod/phone/TCall;->callerCount:I

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/phone/TPhoneService;->getConstCallType(Lcom/android/internal/telephony/Connection;)I

    move-result v1

    iput v1, v0, Lcom/skt/prod/phone/TCall;->callType:I

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->conferenceCallMgr:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v1

    iput v1, v0, Lcom/skt/prod/phone/TCall;->callerCount:I

    goto :goto_0
.end method

.method private getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .param p1    # Lcom/android/internal/telephony/Call;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method private getDisconnectCause(I)Ljava/lang/String;
    .locals 2
    .param p1    # I

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/phone/TPhoneService;
    .locals 1

    sget-object v0, Lcom/android/phone/TPhoneService;->sMe:Lcom/android/phone/TPhoneService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/TPhoneService;

    invoke-direct {v0}, Lcom/android/phone/TPhoneService;-><init>()V

    sput-object v0, Lcom/android/phone/TPhoneService;->sMe:Lcom/android/phone/TPhoneService;

    :cond_0
    sget-object v0, Lcom/android/phone/TPhoneService;->sMe:Lcom/android/phone/TPhoneService;

    return-object v0
.end method

.method private handleModifyCallRequest(Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .param p1    # Lcom/android/internal/telephony/Connection;

    :try_start_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProposedConnectionType(Lcom/android/internal/telephony/Connection;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-string v2, "Incoming Modify call request to CALL_TYPE_VT"

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsIms;->isLowBatt()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f09080d

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->sendRequestVideoCall(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incoming handleModifyCallRequest CallStateException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    :try_start_1
    const-string v2, "Incoming Modify call request to CALL_TYPE_VOICE"

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private initRegisterListener(Lcom/android/phone/ITPhoneEventListener;)V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    const-string v2, "TPhoneService"

    const-string v3, "initRegisterListener() : "

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/phone/ITPhoneEventListener;->onPhoneStateChanged(I)V

    iget v0, p0, Lcom/android/phone/TPhoneService;->mCoverState:I

    invoke-interface {p1, v0}, Lcom/android/phone/ITPhoneEventListener;->onCoverStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "TPhoneService"

    const-string v3, "initRegisterListener() Exception"

    invoke-static {v2, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "TPhoneService"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "TPhoneService"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private static mHandlerToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "PHONE_STATE_CHANGED"

    goto :goto_0

    :sswitch_1
    const-string v0, "PHONE_NEW_RINGING_CONNECTION"

    goto :goto_0

    :sswitch_2
    const-string v0, "PHONE_DISCONNECT"

    goto :goto_0

    :sswitch_3
    const-string v0, "SUPP_SERVICE_FAILED"

    goto :goto_0

    :sswitch_4
    const-string v0, "PHONE_INCOMING_RING"

    goto :goto_0

    :sswitch_5
    const-string v0, "PHONE_ON_DIAL_CHARS"

    goto :goto_0

    :sswitch_6
    const-string v0, "PHONE_INCOMING_MODIFY_CALL_REQUEST"

    goto :goto_0

    :sswitch_7
    const-string v0, "PHONE_MODIFY_CALL_RESULT"

    goto :goto_0

    :sswitch_8
    const-string v0, "DELAYED_CLEANUP_AFTER_DISCONNECT"

    goto :goto_0

    :sswitch_9
    const-string v0, "DELAYED_START_CALLEND_ACTIVITY"

    goto :goto_0

    :sswitch_a
    const-string v0, "SS_INFO"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_4
        0xd -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x6e -> :sswitch_3
        0x3e8 -> :sswitch_a
        0x3e9 -> :sswitch_8
        0x3ea -> :sswitch_9
    .end sparse-switch
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 6

    const/16 v5, 0x3e9

    const/4 v4, 0x1

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    const-string v0, "onDisconnect : connection is null"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    const-string v2, "TPhoneService"

    const-string v3, "onDisconnect()..."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - cause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - connection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/phone/TPhoneService$7;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x1388

    :goto_1
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x1194

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private registerForBroadcast()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.skt.prod.phone.TPHONE_SERVICE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.skt.prod.phone.TPHONE_SERVICE_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.skt.prod.phone.internal.action.START_CALLEND_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.skt.prod.phone.action.FINISH_CALLEND_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.skt.prod.phone.TPHONE_CLEAR_LOCKSCREEN_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.skt.prod.dialer.CHANGE_TPHONE_MODE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.skt.prod.dialer.TPHONE_UPDATE_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTBroadcastReceiver:Lcom/android/phone/TPhoneService$TBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestModifyCall(I)V
    .locals 7
    .param p1    # I

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, p1, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    if-nez p1, :cond_0

    :cond_0
    :try_start_0
    invoke-static {v0, v2, p1}, Lcom/android/phone/PhoneUtils;->changeConnectionType(Lcom/android/internal/telephony/Connection;Landroid/os/Message;I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "TPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while trying to modify call "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.skt.prod.phone"

    const-string v2, "com.skt.prod.phone.activities.phone.TPhoneActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSystemKeyEvent - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendCoverStateChanged(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ITPhoneEventListener;

    invoke-interface {v0, p1}, Lcom/android/phone/ITPhoneEventListener;->onCoverStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "TPhoneService"

    const-string v3, "sendCoverStateChanged() Exception"

    invoke-static {v1, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private sendDisconnectCall(Landroid/os/AsyncResult;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    const-string v0, "sendDisconnectCall : connection is null"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v2, "onDisconnect() ============================="

    const/4 v6, 0x1

    invoke-direct {p0, v2, v6}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "address : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v5, Lcom/skt/prod/phone/TCall;->address:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connectTime : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, v5, Lcom/skt/prod/phone/TCall;->connectTime:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "creatTime : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, v5, Lcom/skt/prod/phone/TCall;->creatTime:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInComing : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v6, v5, Lcom/skt/prod/phone/TCall;->isInComing:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lettering : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v5, Lcom/skt/prod/phone/TCall;->lettering:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numberPresentation : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v5, Lcom/skt/prod/phone/TCall;->numberPresentation:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v5, Lcom/skt/prod/phone/TCall;->state:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    invoke-direct {p0, v2, v6}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "virtualAddress : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v5, Lcom/skt/prod/phone/TCall;->virtualAddress:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callType : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v5, Lcom/skt/prod/phone/TCall;->callType:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disconnectCause : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v5, Lcom/skt/prod/phone/TCall;->disconnectCause:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disconnectCasueMessage : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v5, Lcom/skt/prod/phone/TCall;->disconnectCasueMessage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callerCount : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v5, Lcom/skt/prod/phone/TCall;->callerCount:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "supportVideoCall : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v6, v5, Lcom/skt/prod/phone/TCall;->supportVideoCall:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v6

    sget-boolean v2, Lcom/android/phone/PhoneUtilsIms;->mVoLTEPSBarring:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/phone/PhoneUtilsIms;->mVTPSBarring:Z

    if-eqz v2, :cond_6

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SipErrorCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    const/16 v8, 0x17c

    if-ne v7, v8, :cond_9

    iget v7, v5, Lcom/skt/prod/phone/TCall;->callType:I

    if-eq v7, v10, :cond_3

    iget v7, v5, Lcom/skt/prod/phone/TCall;->callType:I

    if-ne v7, v10, :cond_9

    :cond_3
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v7

    if-eqz v7, :cond_5

    iget v7, v7, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMS_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtilsIms;->handleCallFailError(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Phone;)Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    :goto_3
    if-ge v1, v3, :cond_7

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ITPhoneEventListener;

    invoke-interface {v0, v5, v2}, Lcom/android/phone/ITPhoneEventListener;->onDisconnect(Lcom/skt/prod/phone/TCall;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_1

    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_4
    iput-object v5, p0, Lcom/android/phone/TPhoneService;->mDisconnectingCall:Lcom/skt/prod/phone/TCall;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    iget-boolean v0, p0, Lcom/android/phone/TPhoneService;->mPendingDisplayTPhone:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/TPhoneService;->mPendingDisplayTPhone:Z

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "TPhoneService"

    const-string v2, "sendDisconnectCall() Exception"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_4

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    move v3, v2

    goto :goto_2
.end method

.method private sendNewIncomingCall(Landroid/os/AsyncResult;)V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v0, "onNewIncomingCall() ============================="

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/skt/prod/phone/TCall;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v3, Lcom/skt/prod/phone/TCall;->connectTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "creatTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v3, Lcom/skt/prod/phone/TCall;->creatTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInComing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v3, Lcom/skt/prod/phone/TCall;->isInComing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lettering : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/skt/prod/phone/TCall;->lettering:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numberPresentation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lcom/skt/prod/phone/TCall;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lcom/skt/prod/phone/TCall;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "virtualAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/skt/prod/phone/TCall;->virtualAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lcom/skt/prod/phone/TCall;->callType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectCause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lcom/skt/prod/phone/TCall;->disconnectCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectCasueMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/skt/prod/phone/TCall;->disconnectCasueMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callerCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lcom/skt/prod/phone/TCall;->callerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportVideoCall : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v3, Lcom/skt/prod/phone/TCall;->supportVideoCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ITPhoneEventListener;

    invoke-interface {v0, v3}, Lcom/android/phone/ITPhoneEventListener;->onNewIncomingCall(Lcom/skt/prod/phone/TCall;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "TPhoneService"

    const-string v3, "sendPhoneState() Exception"

    invoke-static {v1, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private sendPhoneState()V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ITPhoneEventListener;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-interface {v0, v5}, Lcom/android/phone/ITPhoneEventListener;->onPhoneStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "TPhoneService"

    const-string v3, "sendPhoneState() Exception"

    invoke-static {v1, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private sendPostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection$PostDialState;

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ITPhoneEventListener;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-interface {v0, v5, p2}, Lcom/android/phone/ITPhoneEventListener;->onPostDialCharacter(IC)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "TPhoneService"

    const-string v2, "sendPostOnDialChars() Exception"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method private sendRequestVideoCall(Lcom/android/internal/telephony/Connection;)V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/TPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ITPhoneEventListener;

    invoke-interface {v0, v3}, Lcom/android/phone/ITPhoneEventListener;->onRequestVideoCall(Lcom/skt/prod/phone/TCall;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "TPhoneService"

    const-string v3, "sendRequestVideoCall() Exception"

    invoke-static {v1, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private sendSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ITPhoneEventListener;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-interface {v1, v5}, Lcom/android/phone/ITPhoneEventListener;->onSuppServiceFailed(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "TPhoneService"

    const-string v2, "sendSuppServiceFailed() Exception"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private sendSuppServiceNotification(Landroid/os/AsyncResult;)V
    .locals 7

    iget-object v3, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    const-string v1, "TPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSuppServiceNotification() notificationType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", code="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ITPhoneEventListener;

    iget v5, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    iget v6, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-interface {v1, v5, v6}, Lcom/android/phone/ITPhoneEventListener;->onSuppServiceNotification(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "TPhoneService"

    const-string v2, "sendSuppServiceFailed() Exception"

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private sendVideoCallResult(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mSyncListener:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ITPhoneEventListener;

    invoke-interface {v0, p1}, Lcom/android/phone/ITPhoneEventListener;->onVideoCallResult(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "TPhoneService"

    const-string v3, "sendVideoCallResult() Exception"

    invoke-static {v1, v3, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mTPhoneListners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private unregisterForBroadcast()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTBroadcastReceiver:Lcom/android/phone/TPhoneService$TBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public GetTDialPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTDialPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetTPhoneInstallState()I
    .locals 1

    iget v0, p0, Lcom/android/phone/TPhoneService;->mInstallState:I

    return v0
.end method

.method public GetTPhonePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhonePath:Ljava/lang/String;

    return-object v0
.end method

.method public SetTDialPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/phone/TPhoneService;->mTDialPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public SetTPhoneInstallState(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/phone/TPhoneService;->mInstallState:I

    return-void
.end method

.method public SetTPhonePath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/phone/TPhoneService;->mTPhonePath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method connectBluetoothAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1    # Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectBluetoothAudio()... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/TPhoneService;->mBluetoothConnectionPending:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/phone/TPhoneService;->mBluetoothConnectionRequestTime:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectBluetoothAudio()... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    const-string v0, "disconnectBluetoothAudio()... "

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/TPhoneService;->mBluetoothConnectionPending:Z

    return-void
.end method

.method public getBgCall()Lcom/skt/prod/phone/TCall;
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "getBgCall() ============================="

    invoke-direct {p0, v1, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/skt/prod/phone/TCall;->connectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creatTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/skt/prod/phone/TCall;->creatTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInComing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/skt/prod/phone/TCall;->isInComing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lettering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->lettering:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberPresentation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->numberPresentation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "virtualAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->virtualAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->callType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectCause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->disconnectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectCasueMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->disconnectCasueMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->callerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportVideoCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/skt/prod/phone/TCall;->supportVideoCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method getConnectedBluetoothDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectedBluetoothDevices()... connectedDevices="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "getConnectedBluetoothDevices()... null"

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConstCallType(Lcom/android/internal/telephony/Connection;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/CallDetails;->call_type:I

    iget v2, v2, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isIMSConfCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x5

    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConstCallType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    if-nez v3, :cond_5

    if-eq v2, v1, :cond_2

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isWBMode(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/android/phone/PhoneUtilsExt;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    if-ne v2, v1, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public getFgCall()Lcom/skt/prod/phone/TCall;
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "getFgCall() ============================="

    invoke-direct {p0, v1, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/skt/prod/phone/TCall;->connectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creatTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/skt/prod/phone/TCall;->creatTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInComing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/skt/prod/phone/TCall;->isInComing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lettering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->lettering:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberPresentation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->numberPresentation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "virtualAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->virtualAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->callType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectCause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->disconnectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectCasueMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->disconnectCasueMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->callerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportVideoCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/skt/prod/phone/TCall;->supportVideoCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mDisconnectingCall:Lcom/skt/prod/phone/TCall;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mDisconnectingCall:Lcom/skt/prod/phone/TCall;

    goto/16 :goto_0
.end method

.method public getRingingCall()Lcom/skt/prod/phone/TCall;
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->getConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->getCallInfo(Lcom/android/internal/telephony/Connection;)Lcom/skt/prod/phone/TCall;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "getRingingCall() ============================="

    invoke-direct {p0, v1, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/skt/prod/phone/TCall;->connectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creatTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lcom/skt/prod/phone/TCall;->creatTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInComing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/skt/prod/phone/TCall;->isInComing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lettering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->lettering:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberPresentation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->numberPresentation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "virtualAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->virtualAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->callType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectCause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->disconnectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectCasueMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/skt/prod/phone/TCall;->disconnectCasueMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/skt/prod/phone/TCall;->callerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportVideoCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/skt/prod/phone/TCall;->supportVideoCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public isBluetoothAudioConnected()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v2, :cond_0

    const-string v2, "isBluetoothAudioConnected: false (null mBluetoothHeadset)"

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v2}, Lcom/android/phone/TPhoneService;->isBluetoothAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "isBluetoothAudioConnected() : true"

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "isBluetoothAudioConnected() : false"

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0
.end method

.method isBluetoothAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    const-string v0, "isBluetoothAudioConnected: false (null mBluetoothHeadset)"

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->isBluetoothAudioConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "isBluetoothAudioConnectedOrPending() : true(isBluetoothAudioConnected()"

    invoke-direct {p0, v3}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    iget-boolean v4, p0, Lcom/android/phone/TPhoneService;->mBluetoothConnectionPending:Z

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/phone/TPhoneService;->mBluetoothConnectionRequestTime:J

    sub-long v0, v4, v6

    const-wide/16 v4, 0x1388

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "= isBluetoothAudioConnectedOrPending: true (requested "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msec ago)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "= isBluetoothAudioConnectedOrPending: false (request too old: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " msec ago)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/phone/TPhoneService;->mBluetoothConnectionPending:Z

    move v2, v3

    goto :goto_0

    :cond_2
    const-string v2, "isBluetoothAudioConnectedOrPending() : false"

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    move v2, v3

    goto :goto_0
.end method

.method public isBluetoothAvailable()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v2, :cond_0

    const-string v2, "common_volte_vt_kor"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    :cond_0
    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAvailable() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/android/phone/ITPhoneService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onBind(): mTPhoneService"

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mTPhoneService:Lcom/android/phone/TPhoneService$PhoneService;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "onCreate()"

    invoke-direct {p0, v0, v4}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->recorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {}, Lcom/android/phone/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/IMSConferenceCallMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->conferenceCallMgr:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->registerForBroadcast()V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCallStateMonitor()Lcom/android/phone/CallStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallStateMonitor;->addListener(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->connectTInCallScreen()V

    new-instance v0, Lcom/android/phone/TPhoneService$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/TPhoneService$QueryHandler;-><init>(Lcom/android/phone/TPhoneService;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mQueryHandler:Lcom/android/phone/TPhoneService$QueryHandler;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/TPhoneService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->registerScoverListener()V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_1

    const-string v0, "regist Scover listener "

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_1
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mWindowManager:Landroid/view/IWindowManager;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "onDestroy()"

    invoke-direct {p0, v0, v2}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->disconnectTInCallScreen()V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCallStateMonitor()Lcom/android/phone/CallStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallStateMonitor;->removeListener(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->unregisterForBroadcast()V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_1

    const-string v0, "unregist Scover listener "

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/TPhoneService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_1
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1    # Landroid/content/Intent;

    const-string v0, "onUnbind()"

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method preferredDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 7

    const/4 v3, 0x0

    const-string v0, "WA"

    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->getConnectedBluetoothDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v6, p0, Lcom/android/phone/TPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v5}, Landroid/bluetooth/BluetoothHeadset;->getSamsungHandsfreeDeviceType(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preferredDevice() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    return-object v5
.end method

.method public registerScoverListener()V
    .locals 4

    const-string v1, "TPhoneService"

    const-string v2, "registerScoverListener : "

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v1, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v1}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v1, p0, Lcom/android/phone/TPhoneService;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/TPhoneService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v1, Lcom/android/phone/TPhoneService$1;

    invoke-direct {v1, p0}, Lcom/android/phone/TPhoneService$1;-><init>(Lcom/android/phone/TPhoneService;)V

    iput-object v1, p0, Lcom/android/phone/TPhoneService;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public toggleBluetooth()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "toggleBluetooth()..."

    invoke-direct {p0, v1}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/TPhoneService;->dumpBluetoothState()V

    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->disconnectBluetoothAudio()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/TPhoneService;->apps:Lcom/android/phone/PhoneGlobals;

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/TPhoneService;->preferredDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/TPhoneService;->connectBluetoothAudio(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :cond_2
    const-string v1, "TPhoneService"

    const-string v2, "toggleBluetooth(): bluetooth is unavailable"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public updateAppSwitchSystemKeyEvent(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/TPhoneService;->mIsAppSwitchSystemKeyEventRequested:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAppSwitchSystemKeyEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/phone/TPhoneService;->mIsAppSwitchSystemKeyEventRequested:Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, p1}, Lcom/android/phone/TPhoneService;->requestSystemKeyEvent(IZ)Z

    :cond_0
    return-void
.end method
