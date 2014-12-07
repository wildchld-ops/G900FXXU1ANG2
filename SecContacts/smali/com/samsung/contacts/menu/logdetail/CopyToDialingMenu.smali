.class public Lcom/samsung/contacts/menu/logdetail/CopyToDialingMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "CopyToDialingMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/OptionMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->hideStrokeTextView()V

    iget-object v2, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "sip"

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return v4

    :cond_1
    const-string v2, "tel"

    iget-object v3, v0, Lcom/android/dialer/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method
