.class Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;
.super Ljava/lang/Object;
.source "MyAppsLibraryTab.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiChoiceListener"
.end annotation


# instance fields
.field private final mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;)Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    return-object v0
.end method

.method private getCheckedDocuments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->getCheckedDocuments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->handleMenuItem(Ljava/util/List;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    # setter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mCurrentActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$202(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mCurrentActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$202(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 8

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->getCheckedDocuments()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    invoke-static {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->adjustMenu(Ljava/util/List;Landroid/view/Menu;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mCurrentActionMode:Landroid/view/ActionMode;
    invoke-static {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$200(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Landroid/view/ActionMode;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    iget-object v3, v3, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mAuthenticatedActivity:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v3}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0009

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
