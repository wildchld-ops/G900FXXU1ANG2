.class Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;
.super Ljava/lang/Object;
.source "WifiVzwDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiVzwDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IpAddressTextWatcher"
.end annotation


# instance fields
.field final editText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiVzwDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiVzwDialog;Landroid/widget/EditText;)V
    .locals 0
    .param p2    # Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;->editText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1    # Landroid/text/Editable;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;->this$0:Lcom/android/settings/wifi/WifiVzwDialog;

    # getter for: Lcom/android/settings/wifi/WifiVzwDialog;->mTextViewChangedHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiVzwDialog;->access$200(Lcom/android/settings/wifi/WifiVzwDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher$1;-><init>(Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-lt v2, v4, :cond_0

    const/16 v4, 0x39

    if-le v2, v4, :cond_1

    :cond_0
    const/16 v4, 0x2e

    if-ne v2, v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;->editText:Landroid/widget/EditText;

    if-eqz v4, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiVzwDialog$IpAddressTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    return-void
.end method
