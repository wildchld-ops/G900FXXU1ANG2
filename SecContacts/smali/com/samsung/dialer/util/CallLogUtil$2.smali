.class final Lcom/samsung/dialer/util/CallLogUtil$2;
.super Ljava/lang/Object;
.source "CallLogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dialer/util/CallLogUtil;->showDialog(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/ActionMode;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionMode:Landroid/view/ActionMode;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwCheckBox;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/util/CallLogUtil$2;->val$mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/dialer/util/CallLogUtil$2;->val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p3, p0, Lcom/samsung/dialer/util/CallLogUtil$2;->val$actionMode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v2, p0, Lcom/samsung/dialer/util/CallLogUtil$2;->val$mContext:Landroid/content/Context;

    const-string v3, "logslist_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "reject_popup"

    iget-object v3, p0, Lcom/samsung/dialer/util/CallLogUtil$2;->val$not_show_again:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/samsung/dialer/util/CallLogUtil$2;->val$actionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/dialer/util/CallLogUtil$2;->val$actionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method