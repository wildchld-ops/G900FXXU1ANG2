.class final enum Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;
.super Ljava/lang/Enum;
.source "AdrMicroformatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/placesapi/AdrMicroformatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PartType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

.field public static final enum ADR_EXTENDED_ADDRESS:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

.field public static final enum ADR_LOCALITY:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

.field public static final enum ADR_POSTAL_CODE:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

.field public static final enum ADR_REGION:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

.field public static final enum ADR_STREET_ADDRESS:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

.field public static final enum SEPARATOR:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

.field public static final enum UNKNOWN:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;


# instance fields
.field private final adrClass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    const-string v1, "ADR_STREET_ADDRESS"

    const-string v2, "street-address"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_STREET_ADDRESS:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    new-instance v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    const-string v1, "ADR_EXTENDED_ADDRESS"

    const-string v2, "extended-address"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_EXTENDED_ADDRESS:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    new-instance v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    const-string v1, "ADR_LOCALITY"

    const-string v2, "locality"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_LOCALITY:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    new-instance v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    const-string v1, "ADR_REGION"

    const-string v2, "region"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_REGION:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    new-instance v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    const-string v1, "ADR_POSTAL_CODE"

    const-string v2, "postal-code"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_POSTAL_CODE:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    new-instance v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->UNKNOWN:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    new-instance v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    const-string v1, "SEPARATOR"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->SEPARATOR:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    sget-object v1, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_STREET_ADDRESS:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_EXTENDED_ADDRESS:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_LOCALITY:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_REGION:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->ADR_POSTAL_CODE:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->UNKNOWN:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->SEPARATOR:Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->$VALUES:[Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->adrClass:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->$VALUES:[Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    invoke-virtual {v0}, [Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;

    return-object v0
.end method


# virtual methods
.method public getAdrClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/placesapi/AdrMicroformatParser$PartType;->adrClass:Ljava/lang/String;

    return-object v0
.end method
