.class public Lcom/android/launcher2/WidgetFolder;
.super Landroid/widget/LinearLayout;
.source "WidgetFolder.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;,
        Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;,
        Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final MENU_WIDGET_FOLDER_TITLE_LISTENER:Landroid/view/View$OnKeyListener;

.field folderLocation:[I

.field iconLocation:[I

.field private isOpened:Z

.field mExpandDuration:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

.field mMenuWidgetsFolderMgr:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

.field private mOpenWidgetGrid:Landroid/widget/GridLayout;

.field mOtherParent:Landroid/view/ViewGroup;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRunningTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;

.field private mUninstallOverlay:Landroid/graphics/drawable/Drawable;

.field private mWidgetFolderAvailableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedViewWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetFolderView:Lcom/android/launcher2/WidgetFolderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/WidgetFolder;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    new-instance v0, Lcom/android/launcher2/WidgetFolder$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WidgetFolder$4;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->MENU_WIDGET_FOLDER_TITLE_LISTENER:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    new-instance v0, Lcom/android/launcher2/WidgetFolder$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WidgetFolder$4;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->MENU_WIDGET_FOLDER_TITLE_LISTENER:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    new-instance v0, Lcom/android/launcher2/WidgetFolder$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WidgetFolder$4;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->MENU_WIDGET_FOLDER_TITLE_LISTENER:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/WidgetFolder;Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/WidgetFolder;->loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/WidgetFolder;Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/WidgetFolder;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/WidgetFolder;Landroid/widget/GridLayout;ILjava/util/List;III)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/WidgetFolder;->prepareLoadWidgetPreviewsTask(Landroid/widget/GridLayout;ILjava/util/List;III)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/WidgetFolder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mRunningTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/WidgetFolder;)Landroid/widget/GridLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    return-object v0
.end method

.method private createFolderItems()V
    .locals 15

    const/4 v14, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    const-string v2, " Creating Widget View"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_2

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AvailableWidget;

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030004

    iget-object v13, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    invoke-virtual {v1, v2, v13, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/PagedViewWidget;

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "New PagedViewWidget "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " for "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "("

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ")"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    new-array v7, v14, [I

    invoke-interface {v6, v7}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    aget v1, v7, v3

    aget v2, v7, v5

    invoke-virtual {v12, v1, v2}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v1, Lcom/android/launcher2/FocusHelper;->WIDGET_FOLDER_WIDGET_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    rem-int/lit8 v9, v8, 0x2

    div-int/lit8 v10, v8, 0x2

    new-instance v11, Landroid/widget/GridLayout$LayoutParams;

    sget-object v1, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    invoke-static {v10, v1}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    sget-object v2, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    invoke-static {v9, v2}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const/16 v1, 0x33

    invoke-virtual {v11, v1}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    if-lez v9, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v1, v1, Lcom/android/launcher2/PagedView;->mCellGapX:I

    :goto_1
    iput v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-lez v10, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v1, v1, Lcom/android/launcher2/PagedView;->mCellGapY:I

    :goto_2
    iput v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "; row: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", col: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", lm: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", tm: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    invoke-virtual {v1, v12, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    invoke-virtual {v1, v14}, Landroid/widget/GridLayout;->setColumnCount(I)V

    new-instance v0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;-><init>(Lcom/android/launcher2/WidgetFolder;Landroid/widget/GridLayout;ILjava/util/ArrayList;Z)V

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running runnable instantly "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " page "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->run()V

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->refreshModel()V

    :cond_3
    return-void
.end method

.method private createPagedViewWidgetList()V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030004

    iget-object v6, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewWidget;

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v1, v4, [I

    invoke-interface {v0, v1}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    aget v4, v1, v7

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getFolderView()Lcom/android/launcher2/WidgetFolderView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderView:Lcom/android/launcher2/WidgetFolderView;

    return-object v0
.end method

.method private getThreadPriorityForPage(I)I
    .locals 3

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v1, -0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_0
.end method

.method private loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 10

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v6, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadWidgetPreviewsInBackground who: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " page: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->page:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " thread: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " items: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->syncThreadPriority()V

    :cond_2
    iget-object v4, p3, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    iget v2, p3, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->cellWidth:I

    iget v1, p3, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->cellHeight:I

    iget-object v6, p3, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    instance-of v6, v0, Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v6, v0, Lcom/android/launcher2/AvailableWidget;

    if-eqz v6, :cond_3

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->syncThreadPriority()V

    :cond_5
    move-object v6, v0

    check-cast v6, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v6, v2, v1}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got widget preview "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 12

    const/4 v8, 0x0

    if-eqz p2, :cond_3

    iget v3, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->page:I

    sget-object v7, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSyncWidgetPageItems who: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " page: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " items: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " thread: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->layout:Landroid/widget/GridLayout;

    if-eqz v2, :cond_3

    iget-object v7, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v6, :cond_1

    iget-object v7, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget v9, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->cellWidth:I

    if-ge v7, v9, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget v9, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->cellHeight:I

    if-lt v7, v9, :cond_2

    :cond_0
    const/4 v5, 0x1

    :goto_1
    sget-object v9, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "About to apply preview "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " on widget "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " ("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v7}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v7, v4}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7, v1, v5, v8}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;IZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_1

    :cond_3
    return-void
.end method

.method private prepareForOpenAnimate()V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getFolderView()Lcom/android/launcher2/WidgetFolderView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    aget v4, v3, v8

    iget v5, v1, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    add-int/2addr v4, v5

    aput v4, v3, v8

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    aget v4, v3, v6

    iget v5, v1, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    add-int/2addr v4, v5

    aput v4, v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/MenuView;

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    new-array v2, v3, [I

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mOtherParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    aget v4, v2, v6

    aput v4, v3, v6

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    aget v3, v3, v8

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    aget v4, v4, v8

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    aget v4, v4, v6

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private prepareLoadWidgetPreviewsTask(Landroid/widget/GridLayout;ILjava/util/List;III)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;III)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mRunningTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;

    iget v11, v10, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->page:I

    if-ne v11, p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->requestCancel(Z)Z

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not pruned"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v11}, Lcom/android/launcher2/WidgetFolder;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    new-instance v6, Lcom/android/launcher2/WidgetFolder$2;

    invoke-direct {v6, p0}, Lcom/android/launcher2/WidgetFolder$2;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    new-instance v7, Lcom/android/launcher2/WidgetFolder$3;

    invoke-direct {v7, p0}, Lcom/android/launcher2/WidgetFolder$3;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;-><init>(Landroid/widget/GridLayout;ILjava/util/List;IILcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;)V

    new-instance v9, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;

    invoke-direct {v9, p2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;-><init>(I)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v9, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New AppsCustomizeAsyncTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pageData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mRunningTasks:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public animateOpen()V
    .locals 3

    const/high16 v1, 0x3f800000

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->centerAboutIcon()V

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->prepareForOpenAnimate()V

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgetsFolderMgr:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->onFolderOpen()V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/WidgetFolder$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/WidgetFolder$1;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public centerAboutIcon()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolder;->getFolderView()Lcom/android/launcher2/WidgetFolderView;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v14, 0x2

    new-array v5, v14, [I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    invoke-static {v5, v14, v4}, Lcom/android/launcher2/Utilities;->getLocationWithRespectTo([ILandroid/view/ViewParent;Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v7

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    rem-int/lit8 v15, v15, 0x2

    add-int v10, v14, v15

    const/4 v9, 0x3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I

    add-int/lit16 v14, v14, 0xbe

    mul-int v8, v9, v14

    const/4 v14, 0x1

    if-ne v10, v14, :cond_2

    const/16 v1, 0x3c

    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I

    mul-int/2addr v14, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d005f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    add-int/2addr v15, v1

    mul-int/2addr v15, v10

    add-int v2, v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v15

    add-int v3, v14, v15

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v13

    div-int/lit8 v6, v14, 0x2

    const/4 v14, 0x1

    aget v14, v5, v14

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int v12, v14, v15

    add-int v14, v12, v3

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v15, v15, v16

    if-le v14, v15, :cond_1

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int v12, v14, v3

    :cond_1
    iput v13, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b001a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    add-int/2addr v14, v12

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v7, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iput v12, v7, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public close(Landroid/view/ViewGroup;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolder;->setOpened(Z)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public closeFolder()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgetsFolderMgr:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->onFolderClose()V

    return-void
.end method

.method getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeView$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher2/HomeView$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/android/launcher2/HomeView$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getGridLayout()Landroid/widget/GridLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/WidgetFolder;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WidgetFolder::onAttachedToWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/WidgetFolder;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WidgetFolder::onDetachedFromWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    :cond_0
    const v0, 0x7f0800d4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->MENU_WIDGET_FOLDER_TITLE_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mRunningTasks:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I

    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/launcher2/WidgetFolder;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WidgetFolder::onTouchModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method public open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolder;->setOpened(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object p2, p0, Lcom/android/launcher2/WidgetFolder;->mOtherParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->createFolderItems()V

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_3
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->animateOpen()V

    goto :goto_0
.end method

.method public refreshModel()V
    .locals 10

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Lcom/android/launcher2/HomePendingItem;

    if-eqz v7, :cond_0

    move-object v1, v5

    check-cast v1, Lcom/android/launcher2/HomePendingItem;

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v7, v1}, Lcom/android/launcher2/MenuWidgets;->isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is Uninstallable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolder;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/PagedViewWidget;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher2/PagedViewWidget;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setOpenWidgetFolderTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOpened(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    return-void
.end method

.method public setWidgetFolderItems(Ljava/util/ArrayList;Lcom/android/launcher2/MenuWidgets;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;",
            "Lcom/android/launcher2/MenuWidgets;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->createPagedViewWidgetList()V

    return-void
.end method

.method public setWidgetFolderManager(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgetsFolderMgr:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    return-void
.end method

.method public setWidgetFolderView(Lcom/android/launcher2/WidgetFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderView:Lcom/android/launcher2/WidgetFolderView;

    return-void
.end method
