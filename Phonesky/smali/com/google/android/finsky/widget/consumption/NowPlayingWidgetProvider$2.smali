.class Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;
.super Ljava/lang/Object;
.source "NowPlayingWidgetProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;->generateWidgetLayout(Landroid/content/Context;IIII)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$WidgetLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/finsky/widget/consumption/Block;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->this$0:Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;

    iput-object p2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->compare(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/List;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne p1, p2, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p1, v6}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->getRowAverageHeight(Ljava/util/List;Landroid/content/Context;)I

    move-result v1

    iget-object v6, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p2, v6}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->getRowAverageHeight(Ljava/util/List;Landroid/content/Context;)I

    move-result v3

    if-eq v1, v3, :cond_2

    if-lt v1, v3, :cond_0

    move v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->getRowCellCount(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$2;->getRowCellCount(Ljava/util/List;)I

    move-result v2

    if-eq v0, v2, :cond_3

    if-lt v0, v2, :cond_0

    move v4, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    if-gt v6, v7, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method getRowAverageHeight(Ljava/util/List;Landroid/content/Context;)I
    .locals 8
    .param p2    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/widget/consumption/Block;

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/widget/consumption/Block;->getImageHeightRes(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v5, v1

    goto :goto_0

    :cond_1
    div-int v7, v6, v5

    return v7
.end method

.method getRowCellCount(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/Block;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/widget/consumption/Block;

    invoke-virtual {v0}, Lcom/google/android/finsky/widget/consumption/Block;->getNumImages()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method
