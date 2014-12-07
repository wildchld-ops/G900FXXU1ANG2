.class public Lcom/google/android/finsky/layout/AppSecurityPermissions;
.super Landroid/widget/LinearLayout;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;,
        Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionInfoDialog;,
        Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;,
        Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;
    }
.end annotation


# static fields
.field private static final mNewComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpander:Landroid/view/View;

.field private mExpansionState:I

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mHandler:Landroid/os/Handler;

.field private mMustAcceptPermissions:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPackageTitle:Ljava/lang/String;

.field private mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

.field private final mPermissionViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollerRunnable:Ljava/lang/Runnable;

.field private mShouldDisplayDescription:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$1;

    invoke-direct {v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mNewComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mMustAcceptPermissions:Z

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionViews:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpansionState:I

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mNewComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/support/v4/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/finsky/layout/AppSecurityPermissions;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpansionState:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->isCollapsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/layout/AppSecurityPermissions;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->setNormalPermissionsVisibility()V

    return-void
.end method

.method private isCollapsed()Z
    .locals 2

    iget v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpansionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNormalPermissionsVisibility()V
    .locals 11

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->isCollapsed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v8, 0x8

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v9, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionViews:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    iget-object v9, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    # invokes: Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getViewType(I)I
    invoke-static {v9, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->access$000(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_0

    iget-object v9, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionViews:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v9, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpander:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v9, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpander:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v9, v3, Lcom/google/android/finsky/layout/ObservableScrollView;

    if-eqz v9, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/layout/ObservableScrollView;

    move v5, v0

    new-instance v9, Lcom/google/android/finsky/layout/AppSecurityPermissions$2;

    invoke-direct {v9, p0, v6, v5}, Lcom/google/android/finsky/layout/AppSecurityPermissions$2;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Lcom/google/android/finsky/layout/ObservableScrollView;I)V

    iput-object v9, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mScrollerRunnable:Ljava/lang/Runnable;

    iget-object v9, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v0, v9

    move-object v4, v3

    goto :goto_3
.end method

.method private showPermissions()V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->removeAllViews()V

    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iput-boolean v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mMustAcceptPermissions:Z

    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f0400a8

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const v8, 0x7f0901f7

    new-array v9, v10, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageTitle:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->addView(Landroid/view/View;)V

    iput-boolean v7, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mMustAcceptPermissions:Z

    :cond_0
    return-void

    :cond_1
    iget-boolean v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mShouldDisplayDescription:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f0400d0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->isAppInstalled()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->hasNewPermissions()Z

    move-result v6

    if-eqz v6, :cond_5

    const v3, 0x7f0901fa

    :goto_0
    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageTitle:Ljava/lang/String;

    aput-object v9, v8, v7

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->addView(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    # invokes: Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getViewType(I)I
    invoke-static {v6, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->access$000(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    # invokes: Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getView(Landroid/view/ViewGroup;I)Landroid/view/View;
    invoke-static {v6, p0, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->access$100(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionViews:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v5, v10, :cond_3

    invoke-direct {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->isCollapsed()Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    iput-object v4, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpander:Landroid/view/View;

    :cond_4
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const v3, 0x7f0901f8

    iput-boolean v7, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mMustAcceptPermissions:Z

    goto :goto_0

    :cond_6
    const v3, 0x7f0901f9

    goto :goto_0

    :cond_7
    move v6, v7

    goto :goto_2
.end method


# virtual methods
.method public bindInfo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iput-object p2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageTitle:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mShouldDisplayDescription:Z

    new-instance v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    invoke-direct {v0, p0, p5}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPermissionAdapter:Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;

    iget v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpansionState:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p6, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->getSavedExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpansionState:I

    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->showPermissions()V

    return-void
.end method

.method public mustAcceptPermissions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mMustAcceptPermissions:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions;->mExpansionState:I

    invoke-static {p1, v0, v1}, Lcom/google/android/finsky/utils/ExpandableUtils;->saveExpansionState(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method
