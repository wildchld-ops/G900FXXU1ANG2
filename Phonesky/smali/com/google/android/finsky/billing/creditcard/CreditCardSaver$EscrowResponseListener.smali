.class Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowResponseListener;
.super Ljava/lang/Object;
.source "CreditCardSaver.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EscrowResponseListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowResponseListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowResponseListener;-><init>(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowResponseListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowResponseListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    # getter for: Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->access$000(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;)Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->creditCard:Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

    iput-object p1, v0, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;->escrowHandle:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowResponseListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    # getter for: Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->mInstrument:Lcom/google/android/finsky/protos/CommonDevice$Instrument;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->access$000(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;)Lcom/google/android/finsky/protos/CommonDevice$Instrument;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/finsky/protos/CommonDevice$Instrument;->creditCard:Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/finsky/protos/CommonDevice$CreditCardInstrument;->hasEscrowHandle:Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowResponseListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    # invokes: Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->performRequest()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->access$100(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;)V

    return-void
.end method
