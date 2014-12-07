.class Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyAppsInstalledAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionAdapter"
.end annotation


# instance fields
.field private final mDocs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private final mDocumentState:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

.field private final mHeaderAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

.field private final mHeaderTextId:I

.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V
    .locals 1
    .param p2    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;
    .param p3    # I
    .param p4    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocumentState:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    iput p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderTextId:I

    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)I
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    iget v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderTextId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addDoc(Lcom/google/android/finsky/api/model/Document;)V
    .locals 1
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method clearDocs()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1    # I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1    # I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocumentState:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->DOWNLOADING:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getItemViewType(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v5, 0x1

    :goto_0
    packed-switch v6, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null row view for position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    # invokes: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getDownloadingDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v1, v0, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$200(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocumentState:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    move-object v2, p2

    move-object v3, p3

    # invokes: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;
    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$300(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    # invokes: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;
    invoke-static {v0, p1, p2, p3, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$400(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sortDocs()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mDocs:Ljava/util/List;

    # getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcSorter:Ljava/util/Comparator;
    invoke-static {}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->access$100()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
