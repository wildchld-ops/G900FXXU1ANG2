.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field static REPORTING_MODE_CONTINUOUS:I = 0x0

.field static REPORTING_MODE_ONE_SHOT:I = 0x0

.field static REPORTING_MODE_ON_CHANGE:I = 0x0

.field public static final SENSOR_TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field protected static final TAG:Ljava/lang/String; = "SensorManagerA"

.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_BIO:I = 0x10019

.field public static final TYPE_BIO_HRM:I = 0x1001a

.field public static final TYPE_CONTROL_MOTIONRECOGNITION:I = 0x1001b

.field public static final TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GRIP:I = 0x10018

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final TYPE_MOTIONRECOGNITION:I = 0x10017

.field public static final TYPE_MOTION_ACCEL:I = 0x1fa2643

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_SCREEN_ORIENTATION:I = 0x10016

.field public static final TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_STEP_DETECTOR:I = 0x12

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_ULTRAVIOLET:I = 0x10015

.field private static final sSensorReportingModes:[I


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mHandle:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mResolution:F

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    sput v4, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    const/4 v0, 0x2

    sput v0, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    sput v3, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    const/16 v0, 0x38

    new-array v0, v0, [I

    aput v1, v0, v1

    aput v1, v0, v4

    const/4 v1, 0x2

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    aput v3, v0, v3

    sget v1, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v1, v0, v5

    aput v3, v0, v6

    const/4 v1, 0x6

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v3, v0, v1

    const/16 v1, 0x10

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v3, v0, v1

    const/16 v1, 0x12

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x14

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x15

    aput v3, v0, v1

    const/16 v1, 0x16

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v6, v0, v1

    const/16 v1, 0x18

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x19

    aput v3, v0, v1

    const/16 v1, 0x1a

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    aput v3, v0, v1

    const/16 v1, 0x1c

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x1e

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    aput v5, v0, v1

    const/16 v1, 0x20

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x22

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    aput v2, v0, v1

    const/16 v1, 0x23

    aput v4, v0, v1

    const/16 v1, 0x24

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x25

    aput v4, v0, v1

    const/16 v1, 0x26

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    aput v2, v0, v1

    const/16 v1, 0x27

    aput v4, v0, v1

    const/16 v1, 0x28

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x29

    aput v6, v0, v1

    const/16 v1, 0x2a

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x2b

    aput v3, v0, v1

    const/16 v1, 0x2c

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x2d

    aput v4, v0, v1

    const/16 v1, 0x2e

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x2f

    aput v3, v0, v1

    const/16 v1, 0x30

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x31

    aput v4, v0, v1

    const/16 v1, 0x32

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x33

    aput v3, v0, v1

    const/16 v1, 0x34

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x35

    aput v5, v0, v1

    const/16 v1, 0x36

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    aput v2, v0, v1

    const/16 v1, 0x37

    aput v3, v0, v1

    sput-object v0, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .locals 4
    .param p0    # Landroid/hardware/Sensor;
    .param p1    # I

    const/high16 v3, 0x10000

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/16 v2, 0x11

    if-gt p1, v2, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v0, v2, 0x1

    if-le v1, v3, :cond_1

    sub-int v2, v1, v3

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v2, 0x1

    :cond_1
    sget-object v2, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v2, v2

    if-lt v0, v2, :cond_2

    const/16 v2, 0x10

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    aget v2, v2, v0

    goto :goto_0
.end method

.method static getReportingMode(Landroid/hardware/Sensor;)I
    .locals 5
    .param p0    # Landroid/hardware/Sensor;

    const/high16 v3, 0x10000

    iget v2, p0, Landroid/hardware/Sensor;->mType:I

    mul-int/lit8 v1, v2, 0x2

    iget v2, p0, Landroid/hardware/Sensor;->mType:I

    if-le v2, v3, :cond_0

    iget v2, p0, Landroid/hardware/Sensor;->mType:I

    sub-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x2

    :cond_0
    const-string v2, "SensorManagerA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getReportingMode :: sensor.mType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    if-nez v0, :cond_1

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ON_CHANGE:I

    :goto_0
    return v2

    :cond_1
    if-gez v0, :cond_2

    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_ONE_SHOT:I

    goto :goto_0

    :cond_2
    sget v2, Landroid/hardware/Sensor;->REPORTING_MODE_CONTINUOUS:I

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    aget v2, v2, v1

    goto :goto_0
.end method


# virtual methods
.method public getFifoMaxEventCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return v0
.end method

.method public getFifoReservedEventCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return v0
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getResolution()F
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method setRange(FF)V
    .locals 0
    .param p1    # F
    .param p2    # F

    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Sensor name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", vendor=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method