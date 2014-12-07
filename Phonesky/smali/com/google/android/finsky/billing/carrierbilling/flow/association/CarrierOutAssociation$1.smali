.class Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$1;
.super Ljava/lang/Object;
.source "CarrierOutAssociation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->onErrorResponse(Lcom/android/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;

    # invokes: Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->verifyAssociation()V
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;->access$000(Lcom/google/android/finsky/billing/carrierbilling/flow/association/CarrierOutAssociation;)V

    return-void
.end method
