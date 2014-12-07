.class public final enum Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
.super Ljava/lang/Enum;
.source "InAppBillingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/iab/InAppBillingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

.field public static final enum RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

.field public static final enum RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

.field public static final enum RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

.field public static final enum RESULT_ITEM_ALREADY_OWNED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

.field public static final enum RESULT_ITEM_NOT_OWNED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

.field public static final enum RESULT_ITEM_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

.field public static final enum RESULT_NOT_PROMO_ELIGIBLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

.field public static final enum RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

.field public static final enum RESULT_PROMO_ELIGIBLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

.field public static final enum RESULT_SERVICE_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

.field public static final enum RESULT_USER_CANCELED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;


# instance fields
.field private final responseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    new-instance v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_USER_CANCELED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    new-instance v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    new-instance v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    new-instance v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    new-instance v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    new-instance v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    new-instance v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const-string v1, "RESULT_ITEM_ALREADY_OWNED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ITEM_ALREADY_OWNED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    new-instance v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const-string v1, "RESULT_ITEM_NOT_OWNED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ITEM_NOT_OWNED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    new-instance v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const-string v1, "RESULT_PROMO_ELIGIBLE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_PROMO_ELIGIBLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    new-instance v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const-string v1, "RESULT_NOT_PROMO_ELIGIBLE"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_NOT_PROMO_ELIGIBLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_USER_CANCELED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ITEM_ALREADY_OWNED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_ITEM_NOT_OWNED:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_PROMO_ELIGIBLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->RESULT_NOT_PROMO_ELIGIBLE:Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->$VALUES:[Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->$VALUES:[Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;

    return-object v0
.end method


# virtual methods
.method public responseCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/billing/iab/InAppBillingUtils$ResponseCode;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
