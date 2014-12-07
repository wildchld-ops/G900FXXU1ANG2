.class public Lcom/samsung/dialer/volte/VoLTEStateTracker;
.super Ljava/lang/Object;
.source "VoLTEStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/volte/VoLTEStateTracker$TaskUpdateVoLTE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private TEMPORARY_FEATURE_SUPPORT_COMMON_IMS_INTERFACE:Z

.field private TEMPORARY_FEATURE_WB_AMR_SUPPORT_MODEL:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIIMSListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mListener:Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/dialer/volte/VoLTEStateTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TEMPORARY_FEATURE_WB_AMR_SUPPORT_MODEL:Z

    iput-boolean v0, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TEMPORARY_FEATURE_SUPPORT_COMMON_IMS_INTERFACE:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dialer/volte/VoLTEStateTracker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/dialer/volte/VoLTEStateTracker;)Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mListener:Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;

    return-object v0
.end method

.method private isFlightMode(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    sget-object v5, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flightmodecheck is on = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v2, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ne v1, v2, :cond_1

    :goto_2
    return v2

    :cond_0
    move v4, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    new-instance v1, Lcom/samsung/dialer/volte/VoLTEStateTracker$2;

    invoke-direct {v1, p0}, Lcom/samsung/dialer/volte/VoLTEStateTracker$2;-><init>(Lcom/samsung/dialer/volte/VoLTEStateTracker;)V

    iput-object v1, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.volte.state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TEMPORARY_FEATURE_WB_AMR_SUPPORT_MODEL:Z

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerIIMSListener()V
    .locals 4

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "registerIIMSListener - imsInterface is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/samsung/dialer/volte/VoLTEStateTracker$1;

    invoke-direct {v2, p0}, Lcom/samsung/dialer/volte/VoLTEStateTracker$1;-><init>(Lcom/samsung/dialer/volte/VoLTEStateTracker;)V

    iput-object v2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mIIMSListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mIIMSListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    sget-object v2, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "IIMS Listener register registered"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "IIMS Listener register failed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isVolteEnabled(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/dialer/volte/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public isVolteEnabled(Landroid/content/Context;Z)Z
    .locals 18

    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v16, "isVolteEnabled api called"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    instance-of v15, v0, Landroid/content/ContextWrapper;

    if-eqz v15, :cond_2

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Contact_ConfigVolteUserMsg"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x0

    const-string v15, "instant_letterring"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v2, 0x1

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "voicecall_type"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Voice Call Setting = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    const-string v15, "oneline_message"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    if-eqz v14, :cond_1

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    :cond_1
    :try_start_0
    const-string v15, "phone"

    invoke-static {v15}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I

    move-result v12

    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "serviceState : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/dialer/volte/VoLTEStateTracker;->isFlightMode(Landroid/content/Context;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-nez v15, :cond_5

    const/4 v15, 0x1

    :goto_2
    return v15

    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    goto/16 :goto_0

    :cond_3
    const-string v15, "oneline_message"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v2, 0x2

    goto/16 :goto_1

    :cond_4
    const-string v15, "call_message"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v15, 0x0

    goto :goto_2

    :catch_0
    move-exception v3

    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v16, "Failed to clear missed calls notification due to remote exception"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v14, :cond_8

    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v16, "Volte is Disabled"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto :goto_2

    :cond_7
    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v16, "Volte is Disabled"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TEMPORARY_FEATURE_SUPPORT_COMMON_IMS_INTERFACE:Z

    if-eqz v15, :cond_b

    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v16, "in IMS_SUPPORT_COMMON_INTERFACE volte checking method"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v5, :cond_a

    invoke-interface {v5}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getFeatureMask()I

    move-result v4

    and-int/lit8 v15, v4, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    const/4 v6, 0x1

    :goto_3
    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "IIMSConstants.GENERAL.VOLTE_REGISTERED = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_d

    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v16, "Volte is Enabled"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v16, "imsInterface is null"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_b
    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v16, "in previous volte checking method"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    const-string v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v15

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    const/4 v8, 0x1

    :goto_4
    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "isLTEConnected - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "true"

    const-string v16, "persist.sys.ims.reg"

    const-string v17, "false"

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string v15, "persist.sys.ims.volte_supported"

    const-string v16, "-1"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Is Ims registered = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "isVolteSupported = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_d

    if-nez v9, :cond_d

    if-nez v14, :cond_d

    if-eqz v8, :cond_d

    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v16, "Volte is Enabled"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    :cond_d
    sget-object v15, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v16, "Volte is Disabled"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_2
.end method

.method public startTracking(Landroid/content/Context;Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v1, "startTracking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    :goto_0
    iput-object p2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mListener:Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;

    iget-boolean v0, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TEMPORARY_FEATURE_SUPPORT_COMMON_IMS_INTERFACE:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/dialer/volte/VoLTEStateTracker;->registerIIMSListener()V

    :goto_1
    new-instance v0, Lcom/samsung/dialer/volte/VoLTEStateTracker$TaskUpdateVoLTE;

    invoke-direct {v0, p0, p2}, Lcom/samsung/dialer/volte/VoLTEStateTracker$TaskUpdateVoLTE;-><init>(Lcom/samsung/dialer/volte/VoLTEStateTracker;Lcom/samsung/dialer/volte/OnVoLTEStateChangedListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/dialer/volte/VoLTEStateTracker;->registerBroadcastReceiver()V

    goto :goto_1
.end method

.method public stopTracking()V
    .locals 6

    const/4 v5, 0x0

    sget-object v2, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "stopTracking"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TEMPORARY_FEATURE_SUPPORT_COMMON_IMS_INTERFACE:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    :try_start_0
    iget-object v3, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mIIMSListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mIIMSListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v1, v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->deRegisterForRegisterStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    sget-object v2, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "deRegisterForRegisterStateChange"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v2, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "unregisterReceiver - old version"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v5, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    iput-object v5, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object v5, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object v5, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mIIMSListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    return-void

    :cond_2
    :try_start_1
    sget-object v2, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prevent null : mIIMSListener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mIIMSListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / imsInterface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "Error - deRegisterForRegisterStateChange"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "Error - IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/dialer/volte/VoLTEStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v2, Lcom/samsung/dialer/volte/VoLTEStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "unregisterReceiver - new version"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
