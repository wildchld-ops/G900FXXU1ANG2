.class public Lcom/android/mms/transaction/TransactionService;
.super Landroid/app/Service;
.source "TransactionService.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;,
        Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ACKALARM:Ljava/lang/String; = "android.intent.action.ACTION_ACKALARM"

.field public static final ACTION_ENABLE_AUTO_RETRIEVE:Ljava/lang/String; = "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

.field private static final ACTION_NETFLAG_RESET:Ljava/lang/String; = "com.android.mms.intent.action.NETFLAG_RESET"

.field public static final ACTION_ONALARM:Ljava/lang/String; = "android.intent.action.ACTION_ONALARM"

.field public static final ACTION_SPAMALARM:Ljava/lang/String; = "android.intent.action.ACTION_SPAMALARM"

.field private static final APN_EXTENSION_WAIT:I = 0x7530

.field private static final CONNECTIVITY_START_TIMEOUT:I = 0x7530

.field private static final EVENT_CONTINUE_MMS_CONNECTIVITY:I = 0x3

.field private static final EVENT_DATA_STATE_CHANGED:I = 0x2

.field private static final EVENT_HANDLE_NEXT_CHECKING_TRANSACTION:I = 0x5

.field private static final EVENT_HANDLE_NEXT_PENDING_TRANSACTION:I = 0x4

.field private static final EVENT_MMS_CONNECTIVITY_START_CHECK:I = 0x6

.field private static final EVENT_QUIT:I = 0x64

.field private static final EVENT_TRANSACTION_REQUEST:I = 0x1

.field private static final MMS_PROCESSING_MAX_COUNT:I = 0xa

.field private static final RETRY_WAIT:I = 0x2710

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STATE_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "Mms:transaction"

.field private static final TOAST_DOWNLOAD_LATER:I = 0x2

.field private static final TOAST_MSG_QUEUED:I = 0x1

.field private static final TOAST_NONE:I = -0x1

.field public static final TRANSACTION_COMPLETED_ACTION:Ljava/lang/String; = "android.intent.action.TRANSACTION_COMPLETED_ACTION"

.field private static wakelockAcquireCnt:I


# instance fields
.field private mApnChanged:Z

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mOriginAPN:I

.field private final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

.field private mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mToast:Landroid/widget/Toast;

.field public mToastHandler:Landroid/os/Handler;

.field private mToastType:I

.field private mUsingNetworkFeatureRequested:Z

.field private mWaitingMobileMmsConnected:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private noServiceNeedtoSend:Z

.field private retry_count:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/transaction/TransactionService;->wakelockAcquireCnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v1, p0, Lcom/android/mms/transaction/TransactionService;->mOriginAPN:I

    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mApnChanged:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    iput-boolean v1, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    iput v2, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToast:Landroid/widget/Toast;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$1;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/TransactionService;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/mms/transaction/TransactionService;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isDataEnabledInSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/TransactionService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method private acquireWakeLock()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method private declared-synchronized createWakeLock()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getTransactionType(I)I
    .locals 3

    sparse-switch p1, :sswitch_data_0

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService] Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private isDataEnabledInSettings()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    const-string v0, "Mms:transaction"

    const-string v1, "[TransactionService] Mobile Data is disabled in Settings"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 3

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    goto :goto_0
.end method

.method private static isTransientFailure(I)Z
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    .locals 19

    if-eqz p3, :cond_8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    const/4 v9, 0x1

    :goto_0
    const/4 v8, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v18

    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_0

    const/4 v3, 0x2

    move/from16 v0, v18

    if-eq v0, v3, :cond_0

    if-nez v18, :cond_2

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v8, 0x1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v12

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v11

    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] launchTransaction: dataSuspended : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", callIn2g : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v9, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "inbox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->getDataNetworkEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "Mms:transaction"

    const-string v4, "launchTransaction: !getDataNetworkEnabled"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x82

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v3}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    :goto_1
    return-void

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v9, :cond_6

    if-eqz v8, :cond_7

    :cond_6
    if-nez v12, :cond_7

    if-eqz v11, :cond_7

    const-string v3, "Mms:transaction"

    const-string v4, "[TransactionService] mark error type to ERROR_TYPE_GENERIC"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    new-instance v5, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v5, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "err_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7
    const-string v3, "Mms:transaction"

    const-string v4, "[TransactionService] launchTransaction: no network error!"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    move/from16 v0, p1

    iput v0, v14, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p2

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] launchTransaction: sending message "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v3, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method private onNetworkUnavailable(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private onNetworkUnavailable(II)V
    .locals 7

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TransactionService] onNetworkUnavailable: sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    monitor-enter v2

    :try_start_0
    const-string v1, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNetworkUnavailable : retry_count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/TransactionService;->retry_count:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    if-ne p2, v4, :cond_4

    iput v6, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    :cond_2
    :goto_1
    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    goto :goto_0

    :cond_4
    if-ne p2, v6, :cond_2

    iput v4, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    goto :goto_1
.end method

.method private processSendRetriveAck(Landroid/net/Uri;ZI)V
    .locals 15

    const-string v2, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processSendRetriveAck(),uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",isSpam="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "msgType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-wide/16 v10, 0x0

    const/4 v14, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "tr_id"

    aput-object v8, v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v3, v2

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-nez p3, :cond_1

    const-string v6, "noticationtransaction"

    :goto_0
    new-instance v1, Lcom/android/mms/transaction/RetrieveAckTimer;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v8, 0x0

    const/16 v9, 0xa

    move/from16 v7, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/mms/transaction/RetrieveAckTimer;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)V

    new-instance v13, Ljava/lang/Thread;

    invoke-direct {v13, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    :goto_1
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    const-string v6, "retrievetransaction"

    goto :goto_0

    :cond_2
    move-object v5, v14

    move-wide v3, v10

    goto :goto_1
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private renewMmsConnectivity()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showToast(I)V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iput v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    if-ne p1, v1, :cond_0

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mToastType:I

    goto :goto_0
.end method

.method private stopSelfIfIdle(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms:transaction"

    const-string v2, "[TransactionService] stopSelfIfIdle: STOP!"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms:transaction"

    const-string v2, "[TransactionService] stopSelfIfIdle: unRegisterForConnectionStateChanges"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized updateThreadSnippet(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 18

    const-class v17, Lcom/android/mms/transaction/TransactionService;

    monitor-enter v17

    const-wide/16 v12, -0x1

    const-wide/16 v14, -0x1

    const/4 v1, 0x3

    :try_start_0
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "\'sms\' as type"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") UNION  select DISTINCT _id,\'mms\' as type, date * 1000 AS date from pdu where (thread_id= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date DESC "

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    if-eqz v11, :cond_0

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v1, "mms"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TransactionService] latest msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Received msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v11, :cond_1

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_1
    cmp-long v1, v12, v14

    if-nez v1, :cond_2

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "group_snippet"

    move-object/from16 v0, p3

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v1, Lcom/android/mms/util/DummyFramework$Threads;->LAST_MESSAGE_TIME_URI:Landroid/net/Uri;

    move/from16 v0, p1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit v17

    return-void

    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v17

    throw v1
.end method


# virtual methods
.method protected beginMmsConnectivity()I
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->createWakeLock()V

    const/4 v7, 0x2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v9, "enableMMS"

    invoke-virtual {v8, v12, v9}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v7

    :cond_0
    :goto_0
    const-string v8, "Mms:transaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TransactionService] beginMmsConnectivity: result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v7, :pswitch_data_0

    iput-boolean v12, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    const-string v8, "Mms:transaction"

    const-string v9, "[TransactionService] StartUsingNetworkFeature Error!"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v7

    :cond_1
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const-string v8, "Mms:transaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TransactionService] beginMmsConnectivity: cursor.count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-boolean v8, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    if-nez v8, :cond_6

    if-lez v1, :cond_5

    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v9, "enableMMS"

    invoke-virtual {v8, v12, v9}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v7

    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "com.android.mms.intent.action.NETFLAG_RESET"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0x8000000

    invoke-static {p0, v12, v3, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v8, "alarm"

    invoke-virtual {p0, v8}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    add-long v4, v8, v10

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v8

    :cond_5
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v9, "enableMMS"

    invoke-virtual {v8, v12, v9}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v8, "Mms:transaction"

    const-string v9, "[TransactionService] beginMmsConnectivity: skip sTartUsingNetworkFeature() because it is already requested"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    if-ne v8, v13, :cond_7

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_7
    iget-boolean v8, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    if-nez v8, :cond_0

    const/4 v7, 0x0

    goto/16 :goto_0

    :pswitch_0
    iput-boolean v13, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    iput-boolean v13, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    goto/16 :goto_1

    :pswitch_1
    iput-boolean v12, p0, Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z

    iput-boolean v13, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->acquireWakeLock()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected endMmsConnectivity()V
    .locals 3

    :try_start_0
    const-string v0, "Mms:transaction"

    const-string v1, "[TransactionService] endMmsConnectivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService]     mProcessing queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService]     mPending queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    throw v0
.end method

.method protected endMmsConnectivity(I)V
    .locals 3

    :try_start_0
    const-string v0, "Mms:transaction"

    const-string v1, "[TransactionService] endMmsConnectivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService]     mProcessing queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TransactionService]     mPending queue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_0
    const-string v0, "Mms:transaction"

    const-string v1, "##### Don\'t StopUsingNetworkFeature endMmsConnectivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const-string v2, "Mms:transaction"

    const-string v3, "[TransactionService] Creating TransactionService"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TransactionService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    new-instance v2, Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;-><init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    new-instance v2, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionService$1;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "Mms:transaction"

    const-string v1, "[TransactionService] Destroying TransactionService"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Mms:transaction"

    const-string v1, "[TransactionService] TransactionService exiting with transaction still pending"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mReceiver:Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 47

    if-nez p1, :cond_0

    const/4 v4, 0x2

    :goto_0
    return v4

    :cond_0
    const-string v4, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->isNetworkAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v39, 0x1

    :goto_1
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] onStart: #"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService]     : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " intent="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService]     networkAvailable="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v39, :cond_4

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_5

    const-string v4, "com.android.mms.intent.action.NETFLAG_RESET"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/transaction/TransactionService;->mUsingNetworkFeatureRequested:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const-string v4, "Mms:transaction"

    const-string v5, "[TransactionService] reset mUsingNetworkFeatureRequested flag"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_3
    const/16 v39, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "android.intent.action.ACTION_ACKALARM"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "MsgType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "MsgId"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v19

    const-string v4, "TansId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "retryAckCnt"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v4, "isSpam"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    add-int/lit8 v16, v16, 0x1

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ retryAckCnt : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "  isSpam : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v43, 0x0

    const/4 v4, 0x5

    move/from16 v0, v16

    if-ge v0, v4, :cond_d

    const/4 v6, 0x0

    if-eqz v15, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://spammms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/spampart"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    if-eqz v40, :cond_a

    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_a

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "test : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v40, :cond_6

    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    :cond_6
    const-string v4, "noticationtransaction"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "retrievetransaction"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_7
    new-instance v13, Lcom/android/mms/transaction/TransactionSettings;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v33

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "**start transaction process~ : messageId : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " Thread : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "connectivity Result :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    move/from16 v0, v33

    if-ne v0, v4, :cond_9

    const-string v4, "Mms:transaction"

    const-string v5, "**start transaction process~ : APN_REQUEST_FAILED "

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    move-object/from16 v7, v43

    :goto_4
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/part"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_3

    :cond_9
    new-instance v7, Lcom/android/mms/transaction/RetrieveAckTransaction;

    move-object/from16 v8, p0

    move/from16 v9, p3

    move-wide/from16 v10, v19

    invoke-direct/range {v7 .. v16}, Lcom/android/mms/transaction/RetrieveAckTransaction;-><init>(Landroid/content/Context;IJLjava/lang/String;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;ZI)V

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual {v7}, Lcom/android/mms/transaction/RetrieveAckTransaction;->process()V

    goto :goto_4

    :cond_a
    if-eqz v40, :cond_b

    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    :cond_b
    new-instance v17, Lcom/android/mms/transaction/RetrieveAckTimer;

    const/16 v25, 0x5

    move-object/from16 v18, p0

    move-object/from16 v21, v12

    move-object/from16 v22, v14

    move/from16 v23, v15

    move/from16 v24, v16

    invoke-direct/range {v17 .. v25}, Lcom/android/mms/transaction/RetrieveAckTimer;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZII)V

    new-instance v42, Ljava/lang/Thread;

    move-object/from16 v0, v42

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Thread;->start()V

    const-string v4, "Mms:transaction"

    const-string v5, "@@ Cursor null or Part null @@"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_5
    move-object/from16 v7, v43

    goto :goto_4

    :cond_d
    const-string v4, "Mms:transaction"

    const-string v5, "@@ ack retry perment fail @@"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const-string v4, "android.intent.action.ACTION_SPAMALARM"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "Mms:transaction"

    const-string v5, "[SpamReport] : ACTION_SPAMALARM recieved"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const-string v4, "MsgId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v4, "SpamId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v4, "TansId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "retrySpamReportCnt"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ retrySpamReportCnt : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    move/from16 v0, v28

    if-ge v0, v4, :cond_10

    new-instance v13, Lcom/android/mms/transaction/TransactionSettings;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v33

    const/4 v4, 0x3

    move/from16 v0, v33

    if-ne v0, v4, :cond_f

    const-string v4, "Mms:transaction"

    const-string v5, "**start transaction process~ : APN_REQUEST_FAILED "

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    const v5, 0x7f0c04f5

    invoke-virtual {v4, v5}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    :goto_6
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_f
    new-instance v7, Lcom/android/mms/transaction/SpamReportTransaction;

    move-object/from16 v21, v7

    move-object/from16 v22, p0

    move/from16 v23, p3

    move-object/from16 v25, v12

    move-object/from16 v27, v13

    invoke-direct/range {v21 .. v28}, Lcom/android/mms/transaction/SpamReportTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;I)V

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual {v7}, Lcom/android/mms/transaction/SpamReportTransaction;->process()V

    goto :goto_6

    :cond_10
    const-string v4, "Mms:transaction"

    const-string v5, "@@ SpamReport fail @@"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    const v5, 0x7f0c04f5

    invoke-virtual {v4, v5}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    goto :goto_6

    :cond_11
    const-string v4, "android.intent.action.ACTION_ONALARM"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1e

    :cond_12
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v35

    if-eqz v35, :cond_1d

    :try_start_2
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->getCount()I

    move-result v34

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] onStart: cursor.count="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v34, :cond_13

    const-string v4, "Mms:transaction"

    const-string v5, "[TransactionService] onStart: no pending messages. Stopping service."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v4, 0x2

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_13
    :try_start_3
    const-string v4, "msg_id"

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    const-string v4, "msg_type"

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    if-eqz v39, :cond_15

    const-string v4, "Mms:transaction"

    const-string v5, "[TransactionService] onStart: registerForConnectionStateChanges"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToLast()Z

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v44

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v4, 0x2

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :pswitch_0
    :try_start_4
    const-string v4, "err_type"

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    if-nez v36, :cond_14

    const-string v4, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    :cond_14
    invoke-static/range {v36 .. v36}, Lcom/android/mms/transaction/TransactionService;->isTransientFailure(I)Z

    move-result v4

    if-nez v4, :cond_17

    :cond_15
    :goto_7
    :pswitch_1
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v44

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] transactionType : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v39, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v4, 0x2

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_16
    packed-switch v44, :pswitch_data_0

    :cond_17
    :pswitch_2
    :try_start_5
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v35

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v46

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x2

    move/from16 v0, v44

    if-ne v0, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_18
    :goto_8
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/mms/transaction/Transaction;

    invoke-virtual/range {v42 .. v42}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v45

    if-eqz v45, :cond_19

    invoke-virtual/range {v46 .. v46}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v45 .. v45}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "Mms:transaction"

    const-string v8, "current pocessing retry cancle : duplicated process"

    invoke-static {v4, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v4

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_19
    :try_start_8
    move-object/from16 v0, v42

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    if-eqz v4, :cond_18

    invoke-virtual/range {v46 .. v46}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v42

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "Mms:transaction"

    const-string v8, "current pocessing retry cancle : duplicated process"

    invoke-static {v4, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_1b
    :try_start_9
    new-instance v30, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {v46 .. v46}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2, v4}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_7

    :cond_1c
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    :goto_9
    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_1d
    const-string v4, "Mms:transaction"

    const-string v5, "[TransactionService] onStart: no pending messages. Stopping service."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    goto :goto_9

    :cond_1e
    const-string v4, "Mms:transaction"

    const-string v5, "[TransactionService] onStart: launch transaction..."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v30, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-direct {v0, v4}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v30

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V

    goto :goto_9

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 26

    move-object/from16 v24, p1

    check-cast v24, Lcom/android/mms/transaction/Transaction;

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v20

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->isNetworkAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v17, 0x1

    :goto_0
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] update transaction "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] noNetwork "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    const-string v4, "Mms:transaction"

    const-string v6, "[TransactionService] update: handle next pending transaction..."

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v6, 0x4

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/Transaction;->getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    :cond_0
    const-string v4, "Mms:transaction"

    const-string v5, "update: ACK_TRANSACTION OR SPAMREC_TRANSACTION END"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_19

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_4
    :try_start_3
    const-string v4, "Mms:transaction"

    const-string v6, "[TransactionService] update: endMmsConnectivity"

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getAppRestrictBackground(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getTypeTransState()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_6

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getTypeTransState()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_6

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity(I)V

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_17

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    :cond_5
    :goto_3
    throw v4

    :cond_6
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :cond_7
    :try_start_6
    new-instance v15, Landroid/content/Intent;

    const-string v4, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v18

    const-string v4, "state"

    move/from16 v0, v18

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    packed-switch v18, :pswitch_data_0

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] Transaction state unknown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] update: broadcast transaction result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_2

    :pswitch_0
    :try_start_7
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] Transaction complete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "uri"

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual/range {v24 .. v24}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v13

    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] autoDownload : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "GATE"

    const-string v5, "[TransactionService] <GATE-M>MMS_MSG_RCVD</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v13, :cond_b

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "GATE"

    const-string v5, "[TransactionService] <GATE-M>MMS_MSG_RETRIEVED</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v4

    if-eqz v4, :cond_d

    const-wide/16 v5, -0x2

    const/4 v7, 0x0

    const-wide/16 v8, -0x2

    const/4 v10, -0x2

    const/4 v11, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v12

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v12}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateMessageIndicator(Landroid/content/Context;JZJIIZ)V

    :cond_b
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/mms/transaction/TransactionService;->processSendRetriveAck(Landroid/net/Uri;ZI)V

    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_d
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v25

    if-eqz v25, :cond_b

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "mms"

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAirMessage()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v22

    invoke-static/range {p0 .. p0}, Lcom/android/mms/bstairmessage/SAirMessage;->getInstance(Landroid/content/Context;)Lcom/android/mms/bstairmessage/SAirMessage;

    move-result-object v19

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/bstairmessage/SAirMessage;->MsgSendMMSToAirMsg(Landroid/content/Context;JZ)V

    goto :goto_6

    :pswitch_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "GATE"

    const-string v5, "[TransactionService] <GATE-M>MMS_MSG_RETRIEVED</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getIsPermanetError()Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNotificationAsRead(Landroid/content/Context;)V

    :cond_10
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getIsSpam()Z

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/mms/transaction/TransactionService;->processSendRetriveAck(Landroid/net/Uri;ZI)V

    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_12
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v25

    if-eqz v25, :cond_10

    const-string v4, "ecid_enable"

    invoke-static {v4}, Lcom/samsung/mms/util/MmsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/mms/util/EcidLookup;->shouldWaitForEcidName(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v25

    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/mms/util/EcidLookup;->delayedNotification(Landroid/content/Context;Landroid/net/Uri;ZLandroid/net/Uri;I)V

    goto :goto_7

    :cond_13
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V

    goto :goto_7

    :pswitch_3
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "GATE"

    const-string v5, "[TransactionService] <GATE-M>MMS_MSG_SENT</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/RateController;->update()V

    goto/16 :goto_4

    :pswitch_4
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TransactionService] Transaction failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDeletePermanentFailure()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/transaction/TransactionState;->getIsPermanetError()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNotificationAsRead(Landroid/content/Context;)V

    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    :cond_16
    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_3

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_3

    :cond_18
    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    goto/16 :goto_2

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    goto/16 :goto_5

    :cond_1a
    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/transaction/TransactionService;->noServiceNeedtoSend:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Observable;->detach(Lcom/android/mms/transaction/Observer;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
