.class public Lcom/google/android/finsky/layout/CreditCardNumberEditText;
.super Landroid/widget/EditText;
.source "CreditCardNumberEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/CreditCardNumberEditText$1;,
        Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnValidNumberEnteredListener;,
        Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnCreditCardTypeChangedListener;,
        Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;
    }
.end annotation


# instance fields
.field private mCurrentType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

.field private mOnCreditCardTypeChangedListener:Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnCreditCardTypeChangedListener;

.field private mOnNumberEnteredListener:Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnValidNumberEnteredListener;

.field private mOriginalTextColors:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mCurrentType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/CreditCardNumberEditText;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mCurrentType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/layout/CreditCardNumberEditText;Lcom/google/android/finsky/billing/creditcard/CreditCardType;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mCurrentType:Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/CreditCardNumberEditText;)Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnCreditCardTypeChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mOnCreditCardTypeChangedListener:Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnCreditCardTypeChangedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/CreditCardNumberEditText;)Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnValidNumberEnteredListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mOnNumberEnteredListener:Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnValidNumberEnteredListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/CreditCardNumberEditText;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    const-string v0, "0123456789 "

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    new-instance v0, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/layout/CreditCardNumberEditText$NumberFormatter;-><init>(Lcom/google/android/finsky/layout/CreditCardNumberEditText;Lcom/google/android/finsky/layout/CreditCardNumberEditText$1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setOnCreditCardTypeChangedListener(Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnCreditCardTypeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mOnCreditCardTypeChangedListener:Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnCreditCardTypeChangedListener;

    return-void
.end method

.method public setOnNumberEnteredListener(Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnValidNumberEnteredListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/CreditCardNumberEditText;->mOnNumberEnteredListener:Lcom/google/android/finsky/layout/CreditCardNumberEditText$OnValidNumberEnteredListener;

    return-void
.end method
