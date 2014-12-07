.class Lcom/google/android/finsky/billing/BillingProfileFragment$2;
.super Ljava/lang/Object;
.source "BillingProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/BillingProfileFragment;->onStoredValueAdded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/BillingProfileFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/BillingProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/BillingProfileFragment$2;->this$0:Lcom/google/android/finsky/billing/BillingProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileFragment$2;->this$0:Lcom/google/android/finsky/billing/BillingProfileFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/BillingProfileFragment;->requestBillingProfile()V

    return-void
.end method
