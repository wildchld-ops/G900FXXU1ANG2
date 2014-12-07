.class final Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;
.super Ljava/lang/Object;
.source "MyAppsInstalledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SectionHeaderHolder"
.end annotation


# instance fields
.field public final bulkActionButton:Lcom/google/android/play/layout/PlayActionButton;

.field public final countView:Landroid/widget/TextView;

.field public final loadingProgress:Landroid/view/View;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f080190

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->titleView:Landroid/widget/TextView;

    const v0, 0x7f08018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayActionButton;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Lcom/google/android/play/layout/PlayActionButton;

    const v0, 0x7f0800d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->loadingProgress:Landroid/view/View;

    const v0, 0x7f080191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->countView:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
