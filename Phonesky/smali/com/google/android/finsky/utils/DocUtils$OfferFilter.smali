.class public final enum Lcom/google/android/finsky/utils/DocUtils$OfferFilter;
.super Ljava/lang/Enum;
.source "DocUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/DocUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OfferFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/utils/DocUtils$OfferFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

.field public static final enum PURCHASE:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

.field public static final enum RENTAL:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    const-string v1, "PURCHASE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->PURCHASE:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    new-instance v0, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    const-string v1, "RENTAL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->RENTAL:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->PURCHASE:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->RENTAL:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->$VALUES:[Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/utils/DocUtils$OfferFilter;
    .locals 1

    const-class v0, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/utils/DocUtils$OfferFilter;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->$VALUES:[Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    invoke-virtual {v0}, [Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    return-object v0
.end method


# virtual methods
.method public matches(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/finsky/utils/DocUtils$1;->$SwitchMap$com$google$android$finsky$utils$DocUtils$OfferFilter:[I

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    if-eq p1, v1, :cond_0

    const/4 v2, 0x7

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :pswitch_1
    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
