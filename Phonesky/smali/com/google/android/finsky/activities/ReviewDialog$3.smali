.class Lcom/google/android/finsky/activities/ReviewDialog$3;
.super Ljava/lang/Object;
.source "ReviewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$docId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialog$3;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewDialog$3;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog$3;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    # getter for: Lcom/google/android/finsky/activities/ReviewDialog;->mClickDebounce:Z
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialog;->access$100(Lcom/google/android/finsky/activities/ReviewDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog$3;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    const/4 v1, 0x1

    # setter for: Lcom/google/android/finsky/activities/ReviewDialog;->mClickDebounce:Z
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/ReviewDialog;->access$102(Lcom/google/android/finsky/activities/ReviewDialog;Z)Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog$3;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    # getter for: Lcom/google/android/finsky/activities/ReviewDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialog;->access$300(Lcom/google/android/finsky/activities/ReviewDialog;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const/16 v1, 0x4b6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewDialog$3;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog$3;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    # invokes: Lcom/google/android/finsky/activities/ReviewDialog;->getListener()Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialog;->access$400(Lcom/google/android/finsky/activities/ReviewDialog;)Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog$3;->val$docId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/activities/ReviewDialog$Listener;->onDeleteReview(Ljava/lang/String;)V

    goto :goto_0
.end method
