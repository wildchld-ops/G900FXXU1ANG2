.class Lcom/android/settings/GridSettings$8;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/android/settings/GridSettings$8;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/settings/GridSettings$8;->this$0:Lcom/android/settings/GridSettings;

    # getter for: Lcom/android/settings/GridSettings;->viewTypeDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/GridSettings;->access$800(Lcom/android/settings/GridSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
