.class Lcom/google/android/finsky/activities/SubscriptionsViewBinder$4;
.super Ljava/lang/Object;
.source "SubscriptionsViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->cancelSubscription(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$4;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1    # Lcom/android/volley/VolleyError;

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$4;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    # invokes: Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->rebindViews()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->access$500(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$4;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    # getter for: Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->access$600(Lcom/google/android/finsky/activities/SubscriptionsViewBinder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09019a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
