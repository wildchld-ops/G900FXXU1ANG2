.class public abstract Lcom/samsung/contacts/list/BaseActionModeAdapter;
.super Ljava/lang/Object;
.source "BaseActionModeAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/ActionMode$Callback;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLimitedCount:I

.field private mMenuId:I

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mParentView:Landroid/view/View;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

.field private mSelectedItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSelectedItemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTextView:Landroid/widget/TextView;

.field private mSeletedFromOtherCount:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    iput v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mLimitedCount:I

    iput-object p1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mParentView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/list/BaseActionModeAdapter;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/list/BaseActionModeAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private clearArrayOrMap()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedItemsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedItemsMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedItemsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Selected items does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSelectedItemsCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedItemsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedItemsMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedItemsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Selected items does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isContain(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedItemsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedItemsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedItemsMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedItemsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Selected items does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setActionContextBarVisibility(ZLandroid/view/ActionMode;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x10203b8

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    const v1, 0x7f020276

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v1, 0x8

    goto :goto_0

    :cond_4
    const v1, 0x7f0a008b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method protected abstract doActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)V
.end method

.method protected abstract doCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
.end method

.method protected abstract doDestroyActionMode(Landroid/view/ActionMode;)V
.end method

.method protected abstract doPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
.end method

.method protected abstract getListItemCount()I
.end method

.method protected abstract getValue(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hideSelectAllHeader()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iput-object v3, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllHeaderView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->doActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, v4, p1}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->setActionContextBarVisibility(ZLandroid/view/ActionMode;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget v1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mMenuId:I

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mMultiSelectActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f08016d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/contacts/list/BaseActionModeAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/contacts/list/BaseActionModeAdapter$1;-><init>(Lcom/samsung/contacts/list/BaseActionModeAdapter;Landroid/view/ActionMode;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mMultiSelectActionBarView:Landroid/view/View;

    const v2, 0x7f08016c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->showSelectAllHeader()V

    invoke-virtual {p0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->updateActionBarTitle()V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->doCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    return v4
.end method

.method protected abstract onDeselectAll()V
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->clearArrayOrMap()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->setActionContextBarVisibility(ZLandroid/view/ActionMode;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->hideSelectAllHeader()V

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->doDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->doPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onSelectAll()V
.end method

.method public setActionModeMenu(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mMenuId:I

    return-void
.end method

.method public setSelectedItemsMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedItemsMap:Ljava/util/Map;

    return-void
.end method

.method public showSelectAllHeader()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mParentView:Landroid/view/View;

    const v1, 0x7f0802b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllHeaderView:Landroid/view/View;

    const v1, 0x7f0802b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllHeaderView:Landroid/view/View;

    new-instance v1, Lcom/samsung/contacts/list/BaseActionModeAdapter$2;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/list/BaseActionModeAdapter$2;-><init>(Lcom/samsung/contacts/list/BaseActionModeAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllHeaderView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllHeaderView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    :cond_0
    return-void
.end method

.method public updateActionBarTitle()V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->getSelectedItemsCount()I

    move-result v0

    iget v3, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mLimitedCount:I

    const v4, 0xffff

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e027e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mLimitedCount:I

    iget v5, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSeletedFromOtherCount:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectedTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateSelectAllState()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->getListItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/contacts/list/BaseActionModeAdapter;->isContain(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/contacts/list/BaseActionModeAdapter;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1
.end method
