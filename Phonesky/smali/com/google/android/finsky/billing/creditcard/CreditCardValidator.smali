.class public Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;
.super Ljava/lang/Object;
.source "CreditCardValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;
    }
.end annotation


# direct methods
.method private static checkNumber(Ljava/lang/String;II)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;",
            ">;)",
            "Lcom/google/android/finsky/billing/creditcard/CreditCardType;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->getTypeForNumber(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->NUMBER:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->getTypeForPrefix(Ljava/lang/String;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0, p1, p5}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;->validateCvc(Lcom/google/android/finsky/billing/creditcard/CreditCardType;Ljava/lang/String;Ljava/util/Set;)V

    :cond_1
    invoke-static {p2, p3, p4, p5}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;->validateExpirationDate(Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    return-object v0
.end method

.method private static validateCvc(Lcom/google/android/finsky/billing/creditcard/CreditCardType;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/billing/creditcard/CreditCardType;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->cvcLength:I

    iget v1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->cvcLength:I

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;->checkNumber(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->CVC:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static validateExpirationDate(Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v6, -0x1

    invoke-static {p1, v8, v8}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;->checkNumber(Ljava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_0
    if-gez v6, :cond_1

    sget-object v7, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_YEAR:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v6, p2

    const/4 v3, -0x1

    invoke-static {p0, v9, v8}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;->checkNumber(Ljava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_2
    if-lt v3, v9, :cond_3

    const/16 v7, 0xc

    if-le v3, v7, :cond_4

    :cond_3
    sget-object v7, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_MONTH:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :cond_4
    if-eqz v2, :cond_6

    :cond_5
    :goto_0
    return-void

    :cond_6
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-direct {v5, v7, v8, v9}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    if-le v6, v7, :cond_7

    sget-object v7, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_YEAR:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    if-nez v1, :cond_5

    new-instance v0, Ljava/util/GregorianCalendar;

    add-int/lit8 v7, v3, -0x1

    invoke-direct {v0, v6, v7, v9}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_MONTH:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_YEAR:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-interface {p3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
