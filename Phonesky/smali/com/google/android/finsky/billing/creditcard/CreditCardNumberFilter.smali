.class public Lcom/google/android/finsky/billing/creditcard/CreditCardNumberFilter;
.super Ljava/lang/Object;
.source "CreditCardNumberFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public static getNumbers(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/CharSequence;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardNumberFilter;->isNumber(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static isAllowed(CC)Z
    .locals 1
    .param p0    # C
    .param p1    # C

    invoke-static {p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardNumberFilter;->isNumber(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardNumberFilter;->isSeparator(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/finsky/billing/creditcard/CreditCardNumberFilter;->isNumber(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNumber(C)Z
    .locals 1
    .param p0    # C

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0    # C

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/text/Spanned;
    .param p5    # I
    .param p6    # I

    if-lez p5, :cond_0

    add-int/lit8 v7, p5, -0x1

    invoke-interface {p4, v7}, Landroid/text/Spanned;->charAt(I)C

    move-result v3

    :goto_0
    sub-int v4, p3, p2

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0, v3}, Lcom/google/android/finsky/billing/creditcard/CreditCardNumberFilter;->isAllowed(CC)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    return-object v7

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string v7, ""

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    :cond_3
    new-array v5, v4, [C

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v2, p2

    :goto_2
    if-ge v2, p3, :cond_5

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0, v3}, Lcom/google/android/finsky/billing/creditcard/CreditCardNumberFilter;->isAllowed(CC)Z

    move-result v7

    if-eqz v7, :cond_4

    aput-char v0, v5, v6

    move v3, v0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v6}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_1
.end method
