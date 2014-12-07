.class public Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyAppsInstalledAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;
    }
.end annotation


# static fields
.field private static final sDocumentAbcCollator:Ljava/text/Collator;

.field private static final sDocumentAbcSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/adapters/AggregatedAdapter",
            "<",
            "Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

.field protected mContext:Landroid/content/Context;

.field private final mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

.field private final mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private final mInstalledSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private final mRecentlyUpdatedSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

.field private final mUnsortedDocuments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcCollator:Ljava/text/Collator;

    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/receivers/Installer;
    .param p3    # Lcom/google/android/finsky/installer/InstallPolicies;
    .param p4    # Lcom/google/android/finsky/appstate/AppStates;
    .param p5    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p6    # Landroid/view/View$OnClickListener;
    .param p7    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;
    .param p8    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    iput-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iput-object p6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->DOWNLOADING:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const v2, 0x7f09012c

    sget-object v3, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->STOP_ALL_DOWNLOADS:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->UPDATE_AVAILABLE:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const v2, 0x7f09012d

    sget-object v3, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->UPDATE_ALL:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->RECENTLY_UPDATED:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const v2, 0x7f09012e

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mRecentlyUpdatedSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->INSTALLED:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const v2, 0x7f090130

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstalledSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    new-instance v0, Lcom/google/android/finsky/adapters/AggregatedAdapter;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mRecentlyUpdatedSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstalledSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    return-void
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcSorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/installer/InstallPolicies;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getDownloadingDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;
    .param p4    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;
    .param p5    # Z

    invoke-direct/range {p0 .. p5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;
    .param p4    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/receivers/Installer;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    return-object v0
.end method

.method private dumpState()V
    .locals 11

    const/4 v10, 0x0

    const-string v7, "****** INSTALLED ADAPTER START ******"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "Total docs: %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Total items: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getCount()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " [ "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v7}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getAdapters()[Landroid/widget/BaseAdapter;

    move-result-object v1

    check-cast v1, [Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getCount()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Index translation: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getItemViewType(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "****** INSTALLED ADAPTER  END  ******"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v7}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->dumpState()V

    return-void
.end method

.method private getDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;
    .locals 5
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;
    .param p4    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;
    .param p5    # Z

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400e0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    move-object v0, p2

    check-cast v0, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {v0, p1, v1, v4, v2}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindCard(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3, v4}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setArchivable(ZLcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;)V

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;

    invoke-static {v1}, Lcom/google/android/finsky/utils/PlayCardUtils;->resetLoggingData(Lcom/google/android/play/layout/PlayCardViewBase;)V

    goto :goto_0
.end method

.method private getDownloadingDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v7, 0x3

    const/4 v6, 0x0

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400e1

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    instance-of v3, p2, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->dumpState()V

    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {v1, p1, v3, v4, v5}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindCard(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/google/android/finsky/receivers/Installer;->getProgress(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->bindProgress(Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;)V

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v7}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentLongDescriptionResource(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f090218

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/layout/play/PlayCardViewMyAppsDownloading;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    move-object v3, p2

    check-cast v3, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;

    invoke-static {v3}, Lcom/google/android/finsky/utils/PlayCardUtils;->resetLoggingData(Lcom/google/android/play/layout/PlayCardViewBase;)V

    goto :goto_0
.end method

.method private getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;
    .locals 10
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;
    .param p4    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    if-nez p2, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400a4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, Lcom/google/android/finsky/api/model/Document;

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->dumpState()V

    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;

    invoke-direct {v1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;-><init>(Landroid/view/View;)V

    :cond_2
    iget-object v6, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->titleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderTextId:I
    invoke-static {p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->access$1100(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Lcom/google/android/play/layout/PlayActionButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    iget-object v6, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->loadingProgress:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
    invoke-static {p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->access$1200(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->isVisible(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    :goto_0
    if-eqz v5, :cond_7

    invoke-virtual {v5, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->isWaiting(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_8

    iget-object v6, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->loadingProgress:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    if-nez v2, :cond_9

    :cond_4
    const/4 v4, 0x1

    :goto_3
    iget-object v7, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->countView:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v4, :cond_5

    iget-object v6, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->countView:Landroid/widget/TextView;

    invoke-virtual {p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-object p2

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_3

    iget-object v6, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Lcom/google/android/play/layout/PlayActionButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    iget-object v6, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Lcom/google/android/play/layout/PlayActionButton;

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->getLabelId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$2;

    invoke-direct {v9, p0, v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$2;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/play/layout/PlayActionButton;->configure(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    :cond_a
    const/16 v6, 0x8

    goto :goto_4
.end method

.method public static getViewDoc(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .locals 2
    .param p0    # Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/finsky/api/model/Document;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putDocsInBuckets()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v15}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getAdapters()[Landroid/widget/BaseAdapter;

    move-result-object v2

    check-cast v2, [Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    move-object v4, v2

    array-length v9, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v1, v4, v6

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->clearDocs()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sget-object v15, Lcom/google/android/finsky/config/G;->recentlyUpdatedWindowSizeMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v15}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v12, v16, v18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v3

    iget-object v10, v3, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v15}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v15

    invoke-interface {v15, v10}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v15, v10}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v15}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v15

    invoke-interface {v15, v10}, Lcom/google/android/finsky/appstate/InstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v7

    invoke-virtual {v8}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->isDownloadingOrInstalling()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    invoke-virtual {v15, v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->addDoc(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_1

    :cond_1
    if-eqz v11, :cond_2

    iget-boolean v15, v11, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    if-eqz v15, :cond_3

    :cond_2
    invoke-interface {v14, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v15, v11, v5}, Lcom/google/android/finsky/installer/InstallPolicies;->canUpdateApp(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    invoke-virtual {v15, v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->addDoc(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getLastUpdateTimestampMs()J

    move-result-wide v15

    cmp-long v15, v15, v12

    if-lez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mRecentlyUpdatedSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    invoke-virtual {v15, v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->addDoc(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstalledSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    invoke-virtual {v15, v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->addDoc(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-object v4, v2

    array-length v9, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_7

    aget-object v1, v4, v6

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->sortDocs()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method public addDocs(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDocument(I)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getUpdateDocuments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->access$700(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/Lists;->newArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->putDocsInBuckets()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->notifyDataSetChanged()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;->bucketsChanged()V

    :cond_0
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->putDocsInBuckets()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->notifyDataSetInvalidated()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;->bucketsChanged()V

    :cond_0
    return-void
.end method
