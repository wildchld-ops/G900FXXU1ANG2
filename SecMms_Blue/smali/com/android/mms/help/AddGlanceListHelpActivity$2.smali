.class Lcom/android/mms/help/AddGlanceListHelpActivity$2;
.super Ljava/lang/Object;
.source "AddGlanceListHelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/AddGlanceListHelpActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/AddGlanceListHelpActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AddGlanceListHelpActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/AddGlanceListHelpActivity$2;->this$0:Lcom/android/mms/help/AddGlanceListHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/mms/help/AddGlanceListHelpActivity$2;->this$0:Lcom/android/mms/help/AddGlanceListHelpActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method