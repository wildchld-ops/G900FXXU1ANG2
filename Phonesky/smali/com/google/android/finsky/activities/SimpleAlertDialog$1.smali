.class Lcom/google/android/finsky/activities/SimpleAlertDialog$1;
.super Ljava/lang/Object;
.source "SimpleAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/SimpleAlertDialog;->setMessageViewClickable(Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/SimpleAlertDialog;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/SimpleAlertDialog;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;->this$0:Lcom/google/android/finsky/activities/SimpleAlertDialog;

    iput-object p2, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;->val$alertDialog:Landroid/app/AlertDialog;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
