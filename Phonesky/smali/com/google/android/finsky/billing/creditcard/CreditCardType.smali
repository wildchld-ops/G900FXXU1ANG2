.class public final enum Lcom/google/android/finsky/billing/creditcard/CreditCardType;
.super Ljava/lang/Enum;
.source "CreditCardType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/billing/creditcard/CreditCardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

.field public static final enum AMEX:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

.field public static final enum DISCOVER:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

.field public static final enum JCB:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

.field public static final enum MC:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

.field public static final enum VISA:Lcom/google/android/finsky/billing/creditcard/CreditCardType;


# instance fields
.field public final cvcLength:I

.field public final groupLengths:[I

.field public final length:I

.field public final numberPrefixRanges:[Ljava/lang/String;

.field public final protobufType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const-string v1, "JCB"

    const/4 v2, 0x0

    const/16 v3, 0x1b

    const/4 v4, 0x3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "352800-358999"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;-><init>(Ljava/lang/String;III[Ljava/lang/String;[I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->JCB:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const-string v1, "DISCOVER"

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "6011"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "650"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;-><init>(Ljava/lang/String;III[Ljava/lang/String;[I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->DISCOVER:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const-string v1, "AMEX"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "34"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "37"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;-><init>(Ljava/lang/String;III[Ljava/lang/String;[I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->AMEX:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const-string v1, "MC"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "51-55"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;-><init>(Ljava/lang/String;III[Ljava/lang/String;[I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->MC:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const-string v1, "VISA"

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "4"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;-><init>(Ljava/lang/String;III[Ljava/lang/String;[I)V

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->VISA:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->JCB:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->DISCOVER:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->AMEX:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->MC:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->VISA:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->$VALUES:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    return-void

    :array_0
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x6
        0x5
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x4
        0x4
        0x4
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;III[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->protobufType:I

    invoke-static {p6}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->arraySum([I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->length:I

    iput p4, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->cvcLength:I

    iput-object p5, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->numberPrefixRanges:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->groupLengths:[I

    return-void
.end method

.method private static arraySum([I)I
    .locals 5

    const/4 v3, 0x0

    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public static getMaxCvcLength()I
    .locals 6

    const/high16 v4, -0x80000000

    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->values()[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    iget v5, v1, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->cvcLength:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v4
.end method

.method public static getTypeForNumber(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .locals 5

    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->values()[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->isValidNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getTypeForPrefix(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .locals 5

    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->values()[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->isValidPrefix(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .locals 1

    const-class v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->$VALUES:[Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    invoke-virtual {v0}, [Lcom/google/android/finsky/billing/creditcard/CreditCardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    return-object v0
.end method


# virtual methods
.method public concealNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->length:I

    add-int/lit8 v4, v4, -0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v0, [C

    const/16 v3, 0x2022

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->groupLengths:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->groupLengths:[I

    aget v5, v5, v1

    add-int/2addr v5, v2

    if-gt v5, v3, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->groupLengths:[I

    aget v5, v5, v1

    add-int/2addr v5, v2

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->groupLengths:[I

    aget v5, v5, v1

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ge v2, v3, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->groupLengths:[I

    array-length v6, v6

    if-ge v5, v6, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected hasValidChecksum(Ljava/lang/String;)Z
    .locals 9

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v5, v3, v1

    add-int/2addr v1, v5

    int-to-double v5, v1

    div-int/lit8 v7, v1, 0xa

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v1, v5

    add-int/2addr v0, v1

    rsub-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    rem-int/lit8 v5, v0, 0xa

    if-nez v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public hasValidLength(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->length:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidNumber(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->hasValidLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->hasValidChecksum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->isValidPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidPrefix(Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v2, 0x0

    :goto_0
    iget-object v8, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->numberPrefixRanges:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_4

    iget-object v8, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->numberPrefixRanges:[Ljava/lang/String;

    aget-object v8, v8, v2

    const-string v9, "-"

    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v7

    array-length v8, v4

    if-ne v8, v11, :cond_0

    aget-object v8, v4, v7

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    aget-object v10, v4, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    aget-object v8, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v1, v5

    array-length v8, v4

    if-ne v8, v11, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    aget-object v9, v4, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v8, v9, :cond_1

    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v5, :cond_1

    if-gt v3, v1, :cond_1

    :goto_1
    return v6

    :cond_4
    move v6, v7

    goto :goto_1
.end method

.method public limitLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
