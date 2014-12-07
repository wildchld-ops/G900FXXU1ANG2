.class public final enum Lorg/keyczar/enums/CipherMode;
.super Ljava/lang/Enum;
.source "CipherMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/keyczar/enums/CipherMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/keyczar/enums/CipherMode;

.field public static final enum CBC:Lorg/keyczar/enums/CipherMode;

.field public static final enum CTR:Lorg/keyczar/enums/CipherMode;

.field public static final enum DET_CBC:Lorg/keyczar/enums/CipherMode;

.field public static final enum ECB:Lorg/keyczar/enums/CipherMode;


# instance fields
.field private jceMode:Ljava/lang/String;

.field private value:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/keyczar/enums/CipherMode;

    const-string v1, "CBC"

    const-string v4, "AES/CBC/PKCS5Padding"

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/keyczar/enums/CipherMode;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lorg/keyczar/enums/CipherMode;->CBC:Lorg/keyczar/enums/CipherMode;

    new-instance v3, Lorg/keyczar/enums/CipherMode;

    const-string v4, "CTR"

    const-string v7, "AES/CTR/NoPadding"

    move v6, v5

    move v8, v5

    invoke-direct/range {v3 .. v8}, Lorg/keyczar/enums/CipherMode;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lorg/keyczar/enums/CipherMode;->CTR:Lorg/keyczar/enums/CipherMode;

    new-instance v6, Lorg/keyczar/enums/CipherMode;

    const-string v7, "ECB"

    const-string v10, "AES/ECB/NoPadding"

    move v8, v12

    move v9, v12

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lorg/keyczar/enums/CipherMode;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v6, Lorg/keyczar/enums/CipherMode;->ECB:Lorg/keyczar/enums/CipherMode;

    new-instance v6, Lorg/keyczar/enums/CipherMode;

    const-string v7, "DET_CBC"

    const-string v10, "AES/CBC/PKCS5Padding"

    move v8, v13

    move v9, v13

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lorg/keyczar/enums/CipherMode;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v6, Lorg/keyczar/enums/CipherMode;->DET_CBC:Lorg/keyczar/enums/CipherMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/keyczar/enums/CipherMode;

    sget-object v1, Lorg/keyczar/enums/CipherMode;->CBC:Lorg/keyczar/enums/CipherMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/keyczar/enums/CipherMode;->CTR:Lorg/keyczar/enums/CipherMode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/keyczar/enums/CipherMode;->ECB:Lorg/keyczar/enums/CipherMode;

    aput-object v1, v0, v12

    sget-object v1, Lorg/keyczar/enums/CipherMode;->DET_CBC:Lorg/keyczar/enums/CipherMode;

    aput-object v1, v0, v13

    sput-object v0, Lorg/keyczar/enums/CipherMode;->$VALUES:[Lorg/keyczar/enums/CipherMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 0
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/keyczar/enums/CipherMode;->value:I

    iput-object p4, p0, Lorg/keyczar/enums/CipherMode;->jceMode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/keyczar/enums/CipherMode;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lorg/keyczar/enums/CipherMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/keyczar/enums/CipherMode;

    return-object v0
.end method

.method public static values()[Lorg/keyczar/enums/CipherMode;
    .locals 1

    sget-object v0, Lorg/keyczar/enums/CipherMode;->$VALUES:[Lorg/keyczar/enums/CipherMode;

    invoke-virtual {v0}, [Lorg/keyczar/enums/CipherMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/keyczar/enums/CipherMode;

    return-object v0
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/keyczar/enums/CipherMode;->jceMode:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputSize(II)I
    .locals 1
    .param p1    # I
    .param p2    # I

    sget-object v0, Lorg/keyczar/enums/CipherMode;->CBC:Lorg/keyczar/enums/CipherMode;

    if-ne p0, v0, :cond_1

    div-int v0, p2, p1

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    sget-object v0, Lorg/keyczar/enums/CipherMode;->ECB:Lorg/keyczar/enums/CipherMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/keyczar/enums/CipherMode;->CTR:Lorg/keyczar/enums/CipherMode;

    if-ne p0, v0, :cond_2

    div-int/lit8 v0, p1, 0x2

    add-int p1, p2, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/keyczar/enums/CipherMode;->DET_CBC:Lorg/keyczar/enums/CipherMode;

    if-ne p0, v0, :cond_3

    div-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr p1, v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method
