.class public Lorg/keyczar/KeyVersion;
.super Ljava/lang/Object;
.source "KeyVersion.java"


# instance fields
.field private exportable:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private status:Lorg/keyczar/enums/KeyStatus;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private versionNumber:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/keyczar/KeyVersion;->exportable:Z

    sget-object v0, Lorg/keyczar/enums/KeyStatus;->ACTIVE:Lorg/keyczar/enums/KeyStatus;

    iput-object v0, p0, Lorg/keyczar/KeyVersion;->status:Lorg/keyczar/enums/KeyStatus;

    iput v1, p0, Lorg/keyczar/KeyVersion;->versionNumber:I

    return-void
.end method

.method public constructor <init>(ILorg/keyczar/enums/KeyStatus;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/keyczar/KeyVersion;->exportable:Z

    sget-object v0, Lorg/keyczar/enums/KeyStatus;->ACTIVE:Lorg/keyczar/enums/KeyStatus;

    iput-object v0, p0, Lorg/keyczar/KeyVersion;->status:Lorg/keyczar/enums/KeyStatus;

    iput v1, p0, Lorg/keyczar/KeyVersion;->versionNumber:I

    iput p1, p0, Lorg/keyczar/KeyVersion;->versionNumber:I

    iput-object p2, p0, Lorg/keyczar/KeyVersion;->status:Lorg/keyczar/enums/KeyStatus;

    iput-boolean p3, p0, Lorg/keyczar/KeyVersion;->exportable:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lorg/keyczar/KeyVersion;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/keyczar/KeyVersion;

    invoke-virtual {p0}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v2

    invoke-virtual {v0}, Lorg/keyczar/KeyVersion;->getVersionNumber()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getStatus()Lorg/keyczar/enums/KeyStatus;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/KeyVersion;->status:Lorg/keyczar/enums/KeyStatus;

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    iget v0, p0, Lorg/keyczar/KeyVersion;->versionNumber:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/keyczar/KeyVersion;->versionNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/keyczar/util/Util;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
