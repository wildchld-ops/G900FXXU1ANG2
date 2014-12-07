.class Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EpisodeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/EpisodeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeasonListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/finsky/api/model/Document;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/EpisodeList;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/layout/EpisodeList;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->this$0:Lcom/google/android/finsky/layout/EpisodeList;

    const v0, 0x7f040137

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/finsky/api/model/Document;

    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method

.method private getSeasonTitle(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040137

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    const v2, 0x7f080243

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v2}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getSeasonTitle(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->this$0:Lcom/google/android/finsky/layout/EpisodeList;

    # getter for: Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v2}, Lcom/google/android/finsky/layout/EpisodeList;->access$000(Lcom/google/android/finsky/layout/EpisodeList;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    if-ne v0, v2, :cond_1

    const v2, 0x7f070038

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-object p2

    :cond_1
    const v2, 0x7f020075

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040138

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/EpisodeList$SeasonListAdapter;->getSeasonTitle(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
