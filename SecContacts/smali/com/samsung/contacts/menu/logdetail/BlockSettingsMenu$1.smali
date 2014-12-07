.class final Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu$1;
.super Ljava/lang/Object;
.source "BlockSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->openBlockNumberSettingDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I
    .param p3    # Z

    # getter for: Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->mBlcoknumbersetting:[Z
    invoke-static {}, Lcom/samsung/contacts/menu/logdetail/BlockSettingsMenu;->access$000()[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    return-void
.end method
