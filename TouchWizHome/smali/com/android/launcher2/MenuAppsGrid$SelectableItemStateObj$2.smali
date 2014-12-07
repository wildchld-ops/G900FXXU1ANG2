.class Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

.field final synthetic val$prevState:Lcom/android/launcher2/MenuAppsGrid$State;

.field final synthetic val$state:Lcom/android/launcher2/MenuAppsGrid$State;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->val$state:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-object p3, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->val$prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->val$state:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->val$prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_2

    :cond_1
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$2800()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->val$prevState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->val$state:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->val$state:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->returnToPreviousState()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj$2;->this$1:Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method
