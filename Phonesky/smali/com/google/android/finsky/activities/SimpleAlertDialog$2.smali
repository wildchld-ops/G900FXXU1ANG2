.class Lcom/google/android/finsky/activities/SimpleAlertDialog$2;
.super Ljava/lang/Object;
.source "SimpleAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/SimpleAlertDialog;->buildAlertDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/SimpleAlertDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/SimpleAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$2;->this$0:Lcom/google/android/finsky/activities/SimpleAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$2;->this$0:Lcom/google/android/finsky/activities/SimpleAlertDialog;

    # invokes: Lcom/google/android/finsky/activities/SimpleAlertDialog;->doPositiveClick()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->access$000(Lcom/google/android/finsky/activities/SimpleAlertDialog;)V

    return-void
.end method
