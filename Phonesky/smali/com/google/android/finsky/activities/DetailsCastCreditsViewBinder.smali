.class public Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "DetailsCastCreditsViewBinder.java"


# instance fields
.field private mCreditsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/DocDetails$VideoCredit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method private populateContent()V
    .locals 9

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mLayout:Landroid/view/View;

    const v7, 0x7f0800d0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mCreditsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/DocDetails$VideoCredit;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04002c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v6, 0x7f08008b

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/google/android/finsky/protos/DocDetails$VideoCredit;->credit:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f08008c

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v6, ", "

    iget-object v7, v0, Lcom/google/android/finsky/protos/DocDetails$VideoCredit;->name:[Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Z)V
    .locals 2

    const v0, 0x7f090188

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getCreditsList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mCreditsList:Ljava/util/List;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mCreditsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mCreditsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsCastCreditsViewBinder;->populateContent()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    return-void
.end method
