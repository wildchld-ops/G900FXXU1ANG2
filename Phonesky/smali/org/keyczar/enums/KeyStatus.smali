.class public final enum Lorg/keyczar/enums/KeyStatus;
.super Ljava/lang/Enum;
.source "KeyStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/keyczar/enums/KeyStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/keyczar/enums/KeyStatus;

.field public static final enum ACTIVE:Lorg/keyczar/enums/KeyStatus;

.field public static final enum INACTIVE:Lorg/keyczar/enums/KeyStatus;

.field public static final enum PRIMARY:Lorg/keyczar/enums/KeyStatus;


# instance fields
.field private name:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/keyczar/enums/KeyStatus;

    const-string v1, "PRIMARY"

    const-string v2, "primary"

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/keyczar/enums/KeyStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/KeyStatus;->PRIMARY:Lorg/keyczar/enums/KeyStatus;

    new-instance v0, Lorg/keyczar/enums/KeyStatus;

    const-string v1, "ACTIVE"

    const-string v2, "active"

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/keyczar/enums/KeyStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/KeyStatus;->ACTIVE:Lorg/keyczar/enums/KeyStatus;

    new-instance v0, Lorg/keyczar/enums/KeyStatus;

    const-string v1, "INACTIVE"

    const-string v2, "inactive"

    invoke-direct {v0, v1, v5, v5, v2}, Lorg/keyczar/enums/KeyStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/keyczar/enums/KeyStatus;->INACTIVE:Lorg/keyczar/enums/KeyStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/keyczar/enums/KeyStatus;

    sget-object v1, Lorg/keyczar/enums/KeyStatus;->PRIMARY:Lorg/keyczar/enums/KeyStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/keyczar/enums/KeyStatus;->ACTIVE:Lorg/keyczar/enums/KeyStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/keyczar/enums/KeyStatus;->INACTIVE:Lorg/keyczar/enums/KeyStatus;

    aput-object v1, v0, v5

    sput-object v0, Lorg/keyczar/enums/KeyStatus;->$VALUES:[Lorg/keyczar/enums/KeyStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/keyczar/enums/KeyStatus;->value:I

    iput-object p4, p0, Lorg/keyczar/enums/KeyStatus;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/keyczar/enums/KeyStatus;
    .locals 1

    const-class v0, Lorg/keyczar/enums/KeyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/keyczar/enums/KeyStatus;

    return-object v0
.end method

.method public static values()[Lorg/keyczar/enums/KeyStatus;
    .locals 1

    sget-object v0, Lorg/keyczar/enums/KeyStatus;->$VALUES:[Lorg/keyczar/enums/KeyStatus;

    invoke-virtual {v0}, [Lorg/keyczar/enums/KeyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/keyczar/enums/KeyStatus;

    return-object v0
.end method
