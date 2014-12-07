.class Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsTextViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$parentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;->val$parentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    # getter for: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mIsTranslated:Z
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$000(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mIsTranslated:Z
    invoke-static {v1, v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$002(Lcom/google/android/finsky/activities/DetailsTextViewBinder;Z)Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    # getter for: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mIsTranslated:Z
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$000(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x100

    :goto_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;->val$parentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    # invokes: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->updateDescription()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$100(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x101

    goto :goto_1
.end method
