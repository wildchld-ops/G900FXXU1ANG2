.class Lcom/google/android/finsky/billing/CheckPromoOffersAction$2;
.super Ljava/lang/Object;
.source "CheckPromoOffersAction.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/CheckPromoOffersAction;->checkPromoOffers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$2;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1    # Lcom/android/volley/VolleyError;

    const/4 v2, 0x0

    const-string v0, "Error while checking for offers: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    # setter for: Lcom/google/android/finsky/billing/CheckPromoOffersAction;->sRunning:Z
    invoke-static {v2}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$202(Z)Z

    iget-object v0, p0, Lcom/google/android/finsky/billing/CheckPromoOffersAction$2;->this$0:Lcom/google/android/finsky/billing/CheckPromoOffersAction;

    # getter for: Lcom/google/android/finsky/billing/CheckPromoOffersAction;->mCallback:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/android/finsky/billing/CheckPromoOffersAction;->access$300(Lcom/google/android/finsky/billing/CheckPromoOffersAction;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
