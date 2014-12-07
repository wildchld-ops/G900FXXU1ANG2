.class public Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;
.super Landroid/app/Fragment;
.source "InteractionGroupPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

.field private final mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mIsSelectAllChecked:Z

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

.field private mRootView:Landroid/view/View;

.field private mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectAllHeaderView:Landroid/view/View;

.field private mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$2;-><init>(Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0    # Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;)Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;
    .locals 1
    .param p0    # Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0    # Landroid/content/Context;

    sput-object p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;)V
    .locals 0
    .param p0    # Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;

    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->updateSelectAll()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;Z)V
    .locals 0
    .param p0    # Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->configureEmptyView(Z)V

    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .param p1    # Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mList:Landroid/widget/ListView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method private setDoneButton(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionDoneButtonStateUpdated(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionSelectionChanged(II)V

    return-void

    :cond_1
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onInteractionDoneButtonStateUpdated(Z)V

    goto :goto_0
.end method

.method private updateSelectAll()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAllGroup()V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    invoke-virtual {v5}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v5, -0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    invoke-virtual {v5}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mList:Landroid/widget/ListView;

    add-int v6, v2, v1

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    sput-object p1, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;-><init>(Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->restoreSavedState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    sget-object v1, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0300c2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mRootView:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mEmptyView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0801da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e0062

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mList:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0802b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectAllHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectAllHeaderView:Landroid/view/View;

    const v2, 0x7f0802b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectAllCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectAllHeaderView:Landroid/view/View;

    new-instance v2, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$1;-><init>(Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v0, p3, v3

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    invoke-virtual {v3, v0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->onSelectedInfoChanged()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    invoke-virtual {v3, v0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onPickerResult()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, v1}, Lcom/samsung/contacts/listener/InteractionListPickerListener;->onPickGroupAction(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    sget-object v0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "selectedGroups"

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "selectAllChecked"

    iget-boolean v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mIsSelectAllChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    invoke-virtual {v0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;->getCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->setDoneButton(II)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->updateSelectAll()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    invoke-virtual {v1}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;->getCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->setDoneButton(II)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAggGroupListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public removeAllGroup()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mAdapter:Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;

    invoke-virtual {v2}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment$ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mList:Landroid/widget/ListView;

    add-int v3, v1, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-virtual {p0}, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->onSelectedInfoChanged()V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    sget-object v0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->TAG:Ljava/lang/String;

    const-string v1, "restoreSavedState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "selectedGroups"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mSelectedGroups:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "selectAllChecked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mIsSelectAllChecked:Z

    goto :goto_0
.end method

.method public setOnMultiDataPickerActionListener(Lcom/samsung/contacts/listener/InteractionListPickerListener;)V
    .locals 0
    .param p1    # Lcom/samsung/contacts/listener/InteractionListPickerListener;

    iput-object p1, p0, Lcom/samsung/contacts/interactions/InteractionGroupPickerFragment;->mListener:Lcom/samsung/contacts/listener/InteractionListPickerListener;

    return-void
.end method
