.class Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;
.super Ljava/lang/Object;
.source "FingerPrintManagerListDeletenew.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->customlistdelete()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
