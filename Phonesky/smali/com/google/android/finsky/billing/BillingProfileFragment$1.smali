.class Lcom/google/android/finsky/billing/BillingProfileFragment$1;
.super Ljava/lang/Object;
.source "BillingProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/BillingProfileFragment;->renderInstruments([Lcom/google/android/finsky/protos/CommonDevice$Instrument;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/BillingProfileFragment;

.field final synthetic val$clientCookie:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

.field final synthetic val$instrumentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/BillingProfileFragment;Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/billing/BillingProfileFragment$1;->this$0:Lcom/google/android/finsky/billing/BillingProfileFragment;

    iput-object p2, p0, Lcom/google/android/finsky/billing/BillingProfileFragment$1;->val$clientCookie:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    iput-object p3, p0, Lcom/google/android/finsky/billing/BillingProfileFragment$1;->val$instrumentId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileFragment$1;->this$0:Lcom/google/android/finsky/billing/BillingProfileFragment;

    iget-object v0, v0, Lcom/google/android/finsky/billing/BillingProfileFragment;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x322

    iget-object v2, p0, Lcom/google/android/finsky/billing/BillingProfileFragment$1;->val$clientCookie:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;

    iget-object v3, p0, Lcom/google/android/finsky/billing/BillingProfileFragment$1;->this$0:Lcom/google/android/finsky/billing/BillingProfileFragment;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEventWithClientCookie(ILcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/BillingProfileFragment$1;->this$0:Lcom/google/android/finsky/billing/BillingProfileFragment;

    iget-object v1, p0, Lcom/google/android/finsky/billing/BillingProfileFragment$1;->val$instrumentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/BillingProfileFragment;->notifyListenerOnInstrumentSelected(Ljava/lang/String;)V

    return-void
.end method
