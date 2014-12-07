.class Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$2;
.super Ljava/lang/Object;
.source "ReviewsFilterOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;

    # invokes: Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->getListener()Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$Listener;
    invoke-static {v1}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->access$100(Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;)Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;

    # getter for: Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->mChecked:[Z
    invoke-static {v1}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->access$000(Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;

    # getter for: Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->mChecked:[Z
    invoke-static {v2}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->access$000(Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;)[Z

    move-result-object v2

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$Listener;->onReviewFilterChanged(ZZ)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->dismiss()V

    return-void
.end method
