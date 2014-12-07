.class Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$6;
.super Ljava/lang/Object;
.source "AddCreditCardFlowFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->loadBillingCountries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$6;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment$6;->this$0:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;

    # invokes: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->onBillingCountriesLoaded()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;->access$500(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFlowFragment;)V

    return-void
.end method
