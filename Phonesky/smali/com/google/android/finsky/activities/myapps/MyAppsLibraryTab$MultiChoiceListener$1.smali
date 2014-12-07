.class Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;
.super Ljava/lang/Object;
.source "MyAppsLibraryTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->onDestroyActionMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
    invoke-static {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->access$300(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;)Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
    invoke-static {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->access$300(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;)Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    move-result-object v3

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;
    invoke-static {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$400(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryAdapter;->setCanClickOnInstalledApps(Z)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
    invoke-static {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->access$300(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;)Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mUseTwoColumnLayout:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
    invoke-static {v3}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->access$300(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;)Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
    invoke-static {v4}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->access$300(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;)Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getDisplayedDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->selectDocument(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/widget/ListView;->clearChoices()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_0
.end method
