.class Lcom/android/settings/GridSettings$5;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GridSettings$5;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/GridSettings$5;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings_gridui"

    iget-object v2, p0, Lcom/android/settings/GridSettings$5;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v2, p2}, Lcom/android/settings/GridSettings;->getRealValue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/GridSettings$5;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/android/settings/GridSettings$5;->this$0:Lcom/android/settings/GridSettings;

    new-instance v1, Landroid/content/Intent;

    # getter for: Lcom/android/settings/GridSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/GridSettings;->access$700()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/GridSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
