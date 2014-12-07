.class public Lcom/samsung/contacts/menu/people/keypad/WifiCallingMenu;
.super Lcom/samsung/contacts/menu/OptionMenu;
.source "WifiCallingMenu.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/menu/OptionMenu;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/contacts/menu/people/keypad/WifiCallingMenu;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.smartwifisupport.WIFI_CALLING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/menu/OptionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
