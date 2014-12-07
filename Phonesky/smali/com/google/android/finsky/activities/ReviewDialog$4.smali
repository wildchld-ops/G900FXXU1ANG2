.class Lcom/google/android/finsky/activities/ReviewDialog$4;
.super Ljava/lang/Object;
.source "ReviewDialog.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewDialog;

.field final synthetic val$docTitle:Ljava/lang/String;

.field final synthetic val$ratingDescription:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewDialog;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialog$4;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewDialog$4;->val$ratingDescription:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/finsky/activities/ReviewDialog$4;->val$docTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 5

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewDialog$4;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    # invokes: Lcom/google/android/finsky/activities/ReviewDialog;->syncButtonEnabledState()V
    invoke-static {v2}, Lcom/google/android/finsky/activities/ReviewDialog;->access$000(Lcom/google/android/finsky/activities/ReviewDialog;)V

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewDialog$4;->val$ratingDescription:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/android/finsky/utils/RateReviewHelper;->getRatingDescription(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p2}, Lcom/google/android/finsky/utils/RateReviewHelper;->getRatingAccessibilityDescription(F)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewDialog$4;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/ReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewDialog$4;->val$docTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewDialog$4;->val$ratingDescription:Landroid/widget/TextView;

    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/utils/PlayUtils;->sendAccessibilityEventWithText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method
