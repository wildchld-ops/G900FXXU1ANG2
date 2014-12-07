.class public Landroid/hardware/scontext/SContextSleepMonitor;
.super Landroid/hardware/scontext/SContextProvider;
.source "SContextSleepMonitor.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextSleepMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSleepMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextSleepMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextProvider;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Landroid/hardware/scontext/SContextProvider;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextSleepMonitor;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    invoke-super {p0}, Landroid/hardware/scontext/SContextProvider;->describeContents()I

    move-result v0

    return v0
.end method

.method public getFlag()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "Flag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getPIM()[F
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "PIM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    return-object v0
.end method

.method public getStage()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "Stage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getStatus()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "SleepStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getWrist()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "Wrist"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getZCM()[I
    .locals 2

    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "ZCM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    iput-object p1, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
