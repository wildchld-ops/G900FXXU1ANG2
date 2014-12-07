.class Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$1;
.super Ljava/lang/Object;
.source "ReviewsFilterOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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

    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$1;->this$0:Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I
    .param p3    # Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog$1;->this$0:Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;

    # getter for: Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->mChecked:[Z
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;->access$000(Lcom/google/android/finsky/activities/ReviewsFilterOptionsDialog;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    return-void
.end method
