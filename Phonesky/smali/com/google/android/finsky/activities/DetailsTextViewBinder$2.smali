.class Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;
.super Ljava/lang/Object;
.source "DetailsTextViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/layout/DetailsTextLayout$MetricsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public metricsAvailable(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    # setter for: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I
    invoke-static {v0, p1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$202(Lcom/google/android/finsky/activities/DetailsTextViewBinder;I)I

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    # setter for: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I
    invoke-static {v0, p2}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$302(Lcom/google/android/finsky/activities/DetailsTextViewBinder;I)I

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    # getter for: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFullHeight:I
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$200(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    # getter for: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mTruncatedHeight:I
    invoke-static {v1}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$300(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    # getter for: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mFooterIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$400(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    # invokes: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->configureContent()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$500(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V

    goto :goto_0
.end method
