.class final enum Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;
.super Ljava/lang/Enum;
.source "AddCreditCardFieldsFroyo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

.field public static final enum ENTERING_ADDRESS:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

.field public static final enum ENTERING_MONTH_YEAR_CVC:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

.field public static final enum ENTERING_NUMBER:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    const-string v1, "ENTERING_NUMBER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_NUMBER:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    new-instance v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    const-string v1, "ENTERING_MONTH_YEAR_CVC"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_MONTH_YEAR_CVC:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    new-instance v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    const-string v1, "ENTERING_ADDRESS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_ADDRESS:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_NUMBER:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_MONTH_YEAR_CVC:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->ENTERING_ADDRESS:Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->$VALUES:[Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;
    .locals 1

    const-class v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->$VALUES:[Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/layout/AddCreditCardFieldsFroyo$State;

    return-object v0
.end method
