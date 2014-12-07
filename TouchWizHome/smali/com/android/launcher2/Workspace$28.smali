.class Lcom/android/launcher2/Workspace$28;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->showMagazineCling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$magazine_cling_message_checkbox_check:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$28;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$28;->val$magazine_cling_message_checkbox_check:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$28;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/Workspace$28;->val$magazine_cling_message_checkbox_check:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$28;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SHOW_MAGAZINE_CLING_MSG"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$28;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace$28;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->dismissMagazineCling()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "helphub:section"

    const-string v2, "mymagazine"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$28;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
