.class Lcom/google/android/finsky/activities/TabbedAdapter$TabType;
.super Ljava/lang/Object;
.source "TabbedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/TabbedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabType"
.end annotation


# instance fields
.field public mElementNode:Lcom/google/android/finsky/layout/play/SelectableUiElementNode;

.field public mQuickLinks:[Lcom/google/android/finsky/adapters/QuickLinkHelper$QuickLinkInfo;

.field public mTitle:Ljava/lang/String;

.field public slidingPanelTab:Lcom/google/android/finsky/activities/ViewPagerTab;

.field private tabBundle:Landroid/os/Bundle;

.field public tabListData:Lcom/google/android/finsky/api/model/DfeList;

.field public final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->type:I

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/activities/TabbedAdapter$TabType;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/TabbedAdapter$TabType;->tabBundle:Landroid/os/Bundle;

    return-object p1
.end method
