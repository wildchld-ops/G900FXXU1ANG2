.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;
.super Ljava/lang/Object;
.source "AddCreditCardFlowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstrumentAndCredentials"
.end annotation


# instance fields
.field private creditCardNumber:Ljava/lang/String;

.field private cvc:Ljava/lang/String;

.field private instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/CommonDevice$Instrument;)V
    .locals 0
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;->creditCardNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;->cvc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/CommonDevice$Instrument;Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Lcom/google/android/finsky/protos/CommonDevice$Instrument;
    .param p5    # Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$1;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/protos/CommonDevice$Instrument;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;->creditCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;->cvc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;)Lcom/google/android/finsky/protos/CommonDevice$Instrument;
    .locals 1
    .param p0    # Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$InstrumentAndCredentials;->instrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    return-object v0
.end method
