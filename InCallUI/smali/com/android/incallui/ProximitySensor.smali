.class public Lcom/android/incallui/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/android/incallui/AccelerometerListener$OrientationListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static mIsProximityCloseDistance:Z


# instance fields
.field private final mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

.field private final mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private mDialpadVisible:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsCoverClosed:Z

.field private mIsHardKeyboardOpen:Z

.field private mIsPhoneOffhook:Z

.field private mIsPrevVideoCall:Z

.field private mOrientation:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private final mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUiShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/incallui/AudioModeProvider;

    const/16 v2, 0x20

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPrevVideoCall:Z

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsCoverClosed:Z

    new-instance v0, Lcom/android/incallui/ProximitySensor$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/ProximitySensor$1;-><init>(Lcom/android/incallui/ProximitySensor;)V

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/ProximitySensor$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/ProximitySensor$2;-><init>(Lcom/android/incallui/ProximitySensor;)V

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityListener:Landroid/hardware/SensorEventListener;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_0
    const-string v0, "onCreate: mProximityWakeLock: "

    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximitySensor:Landroid/hardware/Sensor;

    new-instance v0, Lcom/android/incallui/AccelerometerListener;

    invoke-direct {v0, p1, p0}, Lcom/android/incallui/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/incallui/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    iput-object p2, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addAccessoryEventListener(Lcom/android/incallui/InCallPresenter$AccessoryEventListener;)V

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsCoverClosed:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/ProximitySensor;)Landroid/hardware/Sensor;
    .locals 1
    .param p0    # Lcom/android/incallui/ProximitySensor;

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/ProximitySensor;)Lcom/android/incallui/AudioModeProvider;
    .locals 1
    .param p0    # Lcom/android/incallui/ProximitySensor;

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    return-object v0
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p1    # Lcom/android/incallui/CallList;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private proximitySensorModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateProximitySensorMode()V
    .locals 13

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "turn_on_speaker_by_proxisensor"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v5, v7

    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->proximitySensorModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v10, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v9}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    sget v9, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-eq v9, v0, :cond_0

    sget v9, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-eq v9, v0, :cond_0

    sget v9, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-eq v9, v0, :cond_0

    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    if-eqz v9, :cond_7

    :cond_0
    move v6, v7

    :goto_1
    iget v9, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_8

    move v2, v7

    :goto_2
    const-string v9, "turn_on_speaker_by_proxisensor"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "Ignore Screen Orientation for Accessibility"

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-nez v9, :cond_9

    if-eqz v2, :cond_9

    move v9, v7

    :goto_3
    or-int/2addr v6, v9

    const-string v9, "turn_on_speaker_by_proxisensor"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget v9, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v9, v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v6, 0x0

    :cond_2
    const-string v9, "acquire_proximity_sensor_ui_showing"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-nez v9, :cond_a

    move v9, v7

    :goto_4
    or-int/2addr v6, v9

    :cond_3
    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v9, :cond_b

    if-eqz v2, :cond_b

    move v9, v7

    :goto_5
    or-int/2addr v6, v9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAliveVideoCall()Z

    move-result v3

    or-int/2addr v6, v3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallForwardingState()Z

    move-result v9

    or-int/2addr v6, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "screenonImmediately: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {p0, v9, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v11

    const-string v12, "keybrd"

    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    if-eqz v9, :cond_c

    move v9, v7

    :goto_6
    invoke-virtual {v11, v12, v9}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v11

    const-string v12, "dpad"

    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v9, :cond_d

    move v9, v7

    :goto_7
    invoke-virtual {v11, v12, v9}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v11

    const-string v12, "offhook"

    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v9, :cond_e

    move v9, v7

    :goto_8
    invoke-virtual {v11, v12, v9}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v11

    const-string v12, "hor"

    if-eqz v2, :cond_f

    move v9, v7

    :goto_9
    invoke-virtual {v11, v12, v9}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v11

    const-string v12, "ui"

    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-eqz v9, :cond_10

    move v9, v7

    :goto_a
    invoke-virtual {v11, v12, v9}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v9

    const-string v11, "aud"

    invoke-static {v0}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {p0, v9, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/incallui/InCallUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mIsCoverClosed:Z

    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v9, :cond_12

    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mIsCoverClosed:Z

    if-eqz v9, :cond_12

    const-string v4, "turning off proximity sensor by cover: "

    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "turning off proximity sensor by cover: releasing"

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v1}, Landroid/os/PowerManager$WakeLock;->release(I)V

    :goto_b
    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcom/android/incallui/ProximitySensor;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_4
    :goto_c
    monitor-exit v10

    :cond_5
    return-void

    :cond_6
    move v5, v8

    goto/16 :goto_0

    :cond_7
    move v6, v8

    goto/16 :goto_1

    :cond_8
    move v2, v8

    goto/16 :goto_2

    :cond_9
    move v9, v8

    goto/16 :goto_3

    :cond_a
    move v9, v8

    goto/16 :goto_4

    :cond_b
    move v9, v8

    goto/16 :goto_5

    :cond_c
    move v9, v8

    goto/16 :goto_6

    :cond_d
    move v9, v8

    goto/16 :goto_7

    :cond_e
    move v9, v8

    goto :goto_8

    :cond_f
    move v9, v8

    goto :goto_9

    :cond_10
    move v9, v8

    goto :goto_a

    :cond_11
    const-string v7, "turning off proximity sensor by cover: already released"

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_b

    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_12
    :try_start_1
    iget-boolean v9, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v9, :cond_14

    if-nez v6, :cond_14

    const-string v4, "turning on proximity sensor: "

    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-nez v7, :cond_13

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v7

    if-nez v7, :cond_13

    const-string v7, "turning on proximity sensor: acquiring"

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :goto_d
    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcom/android/incallui/ProximitySensor;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v9, p0, Lcom/android/incallui/ProximitySensor;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v11, 0x3

    invoke-virtual {v7, v8, v9, v11}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_c

    :cond_13
    const-string v7, "turning on proximity sensor: already acquired"

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_d

    :cond_14
    const-string v4, "turning off proximity sensor: "

    iget-object v9, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_16

    const-string v9, "turning off proximity sensor: releasing"

    const/4 v11, 0x1

    invoke-static {p0, v9, v11}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz v6, :cond_15

    move v1, v8

    :goto_e
    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v1}, Landroid/os/PowerManager$WakeLock;->release(I)V

    :goto_f
    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcom/android/incallui/ProximitySensor;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v7, v8}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_c

    :cond_15
    move v1, v7

    goto :goto_e

    :cond_16
    const-string v7, "turning off proximity sensor: already released"

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_f
.end method


# virtual methods
.method public isScreenReallyOff()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioMode(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    const/4 v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCoverStatusChanged(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onDialpadVisible(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onInCallShowing(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1    # Z

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/CallList;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, p1, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, p1, :cond_3

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/incallui/ProximitySensor;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsPrevVideoCall:Z

    if-eq v2, v3, :cond_2

    :cond_1
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mIsPrevVideoCall:Z

    iput v1, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    invoke-virtual {v1, v2}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onSupportedAudioMode(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public orientationChanged(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public tearDown()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public updateProximitySensorModeForCover(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProximitySensorModeForCover: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method
