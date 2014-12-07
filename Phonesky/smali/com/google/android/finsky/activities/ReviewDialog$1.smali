.class Lcom/google/android/finsky/activities/ReviewDialog$1;
.super Ljava/lang/Object;
.source "ReviewDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/ReviewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialog$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog$1;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    # invokes: Lcom/google/android/finsky/activities/ReviewDialog;->syncButtonEnabledState()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewDialog;->access$000(Lcom/google/android/finsky/activities/ReviewDialog;)V

    return-void
.end method
