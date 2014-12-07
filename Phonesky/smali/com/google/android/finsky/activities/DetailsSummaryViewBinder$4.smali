.class Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$4;
.super Ljava/lang/Object;
.source "DetailsSummaryViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->onPositiveClick(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$4;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$4;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    # setter for: Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mIsCancelingPreorder:Z
    invoke-static {v0, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->access$002(Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;Z)Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$4;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->refresh()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$4;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v1, 0x7f0901a0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
