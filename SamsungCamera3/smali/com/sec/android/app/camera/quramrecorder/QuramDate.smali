.class public Lcom/sec/android/app/camera/quramrecorder/QuramDate;
.super Ljava/lang/Object;
.source "QuramDate.java"


# instance fields
.field public day:I

.field public hour:I

.field public milsec:J

.field public min:I

.field public month:I

.field public sec:I

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->getDate(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->getDate(Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public getDate(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->year:I

    invoke-virtual {p1}, Ljava/util/Date;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->month:I

    invoke-virtual {p1}, Ljava/util/Date;->getDate()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->day:I

    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->hour:I

    invoke-virtual {p1}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->min:I

    invoke-virtual {p1}, Ljava/util/Date;->getSeconds()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->sec:I

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/quramrecorder/QuramDate;->milsec:J

    return-void
.end method
