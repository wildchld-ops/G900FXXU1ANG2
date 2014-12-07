.class Lcom/google/android/finsky/activities/SubscriptionsViewBinder$2;
.super Ljava/lang/Object;
.source "SubscriptionsViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->handleMusicSubscriptions()V
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

    iput-object p1, p0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder$2;->this$0:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .param p1    # Lcom/android/volley/VolleyError;

    const-string v0, "Could not retrieve subscription docs: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
