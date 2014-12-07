.class public final enum Lcom/google/android/play/analytics/EventLogger$LogSource;
.super Ljava/lang/Enum;
.source "EventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/analytics/EventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/play/analytics/EventLogger$LogSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/play/analytics/EventLogger$LogSource;

.field public static final enum ANDROID_IDE:Lcom/google/android/play/analytics/EventLogger$LogSource;

.field public static final enum BOOKS:Lcom/google/android/play/analytics/EventLogger$LogSource;

.field public static final enum GAMES:Lcom/google/android/play/analytics/EventLogger$LogSource;

.field public static final enum GMS_CORE:Lcom/google/android/play/analytics/EventLogger$LogSource;

.field public static final enum LB_A:Lcom/google/android/play/analytics/EventLogger$LogSource;

.field public static final enum LB_P:Lcom/google/android/play/analytics/EventLogger$LogSource;

.field public static final enum LB_S:Lcom/google/android/play/analytics/EventLogger$LogSource;

.field public static final enum MAGAZINES:Lcom/google/android/play/analytics/EventLogger$LogSource;

.field public static final enum MARKET:Lcom/google/android/play/analytics/EventLogger$LogSource;

.field public static final enum MUSIC:Lcom/google/android/play/analytics/EventLogger$LogSource;

.field public static final enum VIDEO:Lcom/google/android/play/analytics/EventLogger$LogSource;


# instance fields
.field private final mProtoValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/play/analytics/EventLogger$LogSource;

    const-string v1, "MARKET"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/play/analytics/EventLogger$LogSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/play/analytics/EventLogger$LogSource;->MARKET:Lcom/google/android/play/analytics/EventLogger$LogSource;

    new-instance v0, Lcom/google/android/play/analytics/EventLogger$LogSource;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/play/analytics/EventLogger$LogSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/play/analytics/EventLogger$LogSource;->MUSIC:Lcom/google/android/play/analytics/EventLogger$LogSource;

    new-instance v0, Lcom/google/android/play/analytics/EventLogger$LogSource;

    const-string v1, "BOOKS"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/play/analytics/EventLogger$LogSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/play/analytics/EventLogger$LogSource;->BOOKS:Lcom/google/android/play/analytics/EventLogger$LogSource;

    new-instance v0, Lcom/google/android/play/analytics/EventLogger$LogSource;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/play/analytics/EventLogger$LogSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/play/analytics/EventLogger$LogSource;->VIDEO:Lcom/google/android/play/analytics/EventLogger$LogSource;

    new-instance v0, Lcom/google/android/play/analytics/EventLogger$LogSource;

    const-string v1, "MAGAZINES"

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/play/analytics/EventLogger$LogSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/play/analytics/EventLogger$LogSource;->MAGAZINES:Lcom/google/android/play/analytics/EventLogger$LogSource;

    new-instance v0, Lcom/google/android/play/analytics/EventLogger$LogSource;

    const-string v1, "GAMES"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/play/analytics/EventLogger$LogSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/play/analytics/EventLogger$LogSource;->GAMES:Lcom/google/android/play/analytics/EventLogger$LogSource;

    new-instance v0, Lcom/google/android/play/analytics/EventLogger$LogSource;

    const-string v1, "LB_A"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/play/analytics/EventLogger$LogSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/play/analytics/EventLogger$LogSource;->LB_A:Lcom/google/android/play/analytics/EventLogger$LogSource;

    new-instance v0, Lcom/google/android/play/analytics/EventLogger$LogSource;

    const-string v1, "ANDROID_IDE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/play/analytics/EventLogger$LogSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/play/analytics/EventLogger$LogSource;->ANDROID_IDE:Lcom/google/android/play/analytics/EventLogger$LogSource;

    new-instance v0, Lcom/google/android/play/analytics/EventLogger$LogSource;

    const-string v1, "LB_P"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/play/analytics/EventLogger$LogSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/play/analytics/EventLogger$LogSource;->LB_P:Lcom/google/android/play/analytics/EventLogger$LogSource;

    new-instance v0, Lcom/google/android/play/analytics/EventLogger$LogSource;

    const-string v1, "LB_S"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/play/analytics/EventLogger$LogSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/play/analytics/EventLogger$LogSource;->LB_S:Lcom/google/android/play/analytics/EventLogger$LogSource;

    new-instance v0, Lcom/google/android/play/analytics/EventLogger$LogSource;

    const-string v1, "GMS_CORE"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/play/analytics/EventLogger$LogSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/play/analytics/EventLogger$LogSource;->GMS_CORE:Lcom/google/android/play/analytics/EventLogger$LogSource;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/android/play/analytics/EventLogger$LogSource;

    sget-object v1, Lcom/google/android/play/analytics/EventLogger$LogSource;->MARKET:Lcom/google/android/play/analytics/EventLogger$LogSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/play/analytics/EventLogger$LogSource;->MUSIC:Lcom/google/android/play/analytics/EventLogger$LogSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/play/analytics/EventLogger$LogSource;->BOOKS:Lcom/google/android/play/analytics/EventLogger$LogSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/play/analytics/EventLogger$LogSource;->VIDEO:Lcom/google/android/play/analytics/EventLogger$LogSource;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/play/analytics/EventLogger$LogSource;->MAGAZINES:Lcom/google/android/play/analytics/EventLogger$LogSource;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/play/analytics/EventLogger$LogSource;->GAMES:Lcom/google/android/play/analytics/EventLogger$LogSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/play/analytics/EventLogger$LogSource;->LB_A:Lcom/google/android/play/analytics/EventLogger$LogSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/play/analytics/EventLogger$LogSource;->ANDROID_IDE:Lcom/google/android/play/analytics/EventLogger$LogSource;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/play/analytics/EventLogger$LogSource;->LB_P:Lcom/google/android/play/analytics/EventLogger$LogSource;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/play/analytics/EventLogger$LogSource;->LB_S:Lcom/google/android/play/analytics/EventLogger$LogSource;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/play/analytics/EventLogger$LogSource;->GMS_CORE:Lcom/google/android/play/analytics/EventLogger$LogSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/play/analytics/EventLogger$LogSource;->$VALUES:[Lcom/google/android/play/analytics/EventLogger$LogSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/play/analytics/EventLogger$LogSource;->mProtoValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/play/analytics/EventLogger$LogSource;
    .locals 1

    const-class v0, Lcom/google/android/play/analytics/EventLogger$LogSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/analytics/EventLogger$LogSource;

    return-object v0
.end method

.method public static values()[Lcom/google/android/play/analytics/EventLogger$LogSource;
    .locals 1

    sget-object v0, Lcom/google/android/play/analytics/EventLogger$LogSource;->$VALUES:[Lcom/google/android/play/analytics/EventLogger$LogSource;

    invoke-virtual {v0}, [Lcom/google/android/play/analytics/EventLogger$LogSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/play/analytics/EventLogger$LogSource;

    return-object v0
.end method


# virtual methods
.method public getProtoValue()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/analytics/EventLogger$LogSource;->mProtoValue:I

    return v0
.end method
