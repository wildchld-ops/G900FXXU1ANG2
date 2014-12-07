.class Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowErrorListener;
.super Ljava/lang/Object;
.source "CreditCardSaver.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EscrowErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowErrorListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowErrorListener;-><init>(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowErrorListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->logError(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->access$200(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;ILjava/lang/String;)V

    const-string v0, "Error during escrowing: %s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver$EscrowErrorListener;->this$0:Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;

    # invokes: Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->setVolleyError(Lcom/android/volley/VolleyError;I)V
    invoke-static {v0, p1, v3}, Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;->access$300(Lcom/google/android/finsky/billing/creditcard/CreditCardSaver;Lcom/android/volley/VolleyError;I)V

    return-void
.end method
