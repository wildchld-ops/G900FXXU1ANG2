.class Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;
.super Ljava/lang/Object;
.source "TabbedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/TabbedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabSelectionTracker"
.end annotation


# instance fields
.field private mCurrScrollState:I

.field private mDeferredTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/ListTab;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mShouldDeferListTabDataDisplay:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mDeferredTabs:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mCurrScrollState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/TabbedAdapter$1;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/activities/TabbedAdapter$1;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;Lcom/google/android/finsky/activities/ListTab;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;
    .param p1    # Lcom/google/android/finsky/activities/ListTab;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->addDeferredTab(Lcom/google/android/finsky/activities/ListTab;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;I)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->onPageIsAboutToBeSelected(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;I)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->onPageScrollStateChanged(I)V

    return-void
.end method

.method private addDeferredTab(Lcom/google/android/finsky/activities/ListTab;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/activities/ListTab;

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mDeferredTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private exitDeferredDataDisplayMode()V
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mDeferredTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/ListTab;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ListTab;->exitDeferredDataDisplayMode()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mDeferredTabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mShouldDeferListTabDataDisplay:Z

    return-void
.end method

.method private onPageIsAboutToBeSelected(I)V
    .locals 3
    .param p1    # I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mShouldDeferListTabDataDisplay:Z

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onPageScrollStateChanged(I)V
    .locals 1
    .param p1    # I

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    iput p1, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mCurrScrollState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mShouldDeferListTabDataDisplay:Z

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->exitDeferredDataDisplayMode()V

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mCurrScrollState:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->exitDeferredDataDisplayMode()V

    :cond_0
    return-void
.end method

.method public shouldDeferListTabDataDisplay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabSelectionTracker;->mShouldDeferListTabDataDisplay:Z

    return v0
.end method
