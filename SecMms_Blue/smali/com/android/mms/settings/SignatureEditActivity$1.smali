.class Lcom/android/mms/settings/SignatureEditActivity$1;
.super Ljava/lang/Object;
.source "SignatureEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/SignatureEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/SignatureEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/SignatureEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/SignatureEditActivity$1;->this$0:Lcom/android/mms/settings/SignatureEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity$1;->this$0:Lcom/android/mms/settings/SignatureEditActivity;

    # invokes: Lcom/android/mms/settings/SignatureEditActivity;->SignatureSipHide()V
    invoke-static {v0}, Lcom/android/mms/settings/SignatureEditActivity;->access$000(Lcom/android/mms/settings/SignatureEditActivity;)V

    iget-object v0, p0, Lcom/android/mms/settings/SignatureEditActivity$1;->this$0:Lcom/android/mms/settings/SignatureEditActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
