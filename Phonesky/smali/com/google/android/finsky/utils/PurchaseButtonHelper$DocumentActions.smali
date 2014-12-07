.class public Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;
.super Ljava/lang/Object;
.source "PurchaseButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/PurchaseButtonHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentActions"
.end annotation


# instance fields
.field public actionCount:I

.field public final actions:[Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

.field public backend:I

.field public displayAsOwned:Z

.field private filteredOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Common$Offer;",
            ">;"
        }
    .end annotation
.end field

.field public listingOfferFullText:Ljava/lang/String;

.field public listingOfferText:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v3, [Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iput-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actions:[Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actions:[Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    new-instance v2, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    invoke-direct {v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->reset()V

    return-void
.end method

.method private addAction(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/utils/DocUtils$OfferFilter;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V
    .locals 4
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Lcom/google/android/finsky/utils/DocUtils$OfferFilter;
    .param p6    # Lcom/google/android/finsky/api/model/Document;
    .param p7    # Landroid/accounts/Account;

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actions:[Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iget v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->reset()V

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actions:[Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iget v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    aget-object v0, v0, v1

    iput p1, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actions:[Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iget v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    aget-object v0, v0, v1

    iput-object p2, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerText:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actions:[Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iget v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    aget-object v0, v0, v1

    iput-object p3, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerFullText:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actions:[Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iget v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    aget-object v0, v0, v1

    iput p4, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerType:I

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actions:[Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iget v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    aget-object v0, v0, v1

    iput-object p5, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actions:[Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iget v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    aget-object v0, v0, v1

    iput-object p6, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->document:Lcom/google/android/finsky/api/model/Document;

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actions:[Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iget v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    aget-object v0, v0, v1

    iput-object p7, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->account:Landroid/accounts/Account;

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "Trying to add action %d but no more room for actions"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V
    .locals 8
    .param p1    # I
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # Landroid/accounts/Account;

    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v5, v2

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addAction(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/utils/DocUtils$OfferFilter;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    return-void
.end method

.method public addActionFromOfferList(ILjava/util/List;Lcom/google/android/finsky/utils/DocUtils$OfferFilter;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)I
    .locals 10
    .param p1    # I
    .param p3    # Lcom/google/android/finsky/utils/DocUtils$OfferFilter;
    .param p4    # Lcom/google/android/finsky/api/model/Document;
    .param p5    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Common$Offer;",
            ">;",
            "Lcom/google/android/finsky/utils/DocUtils$OfferFilter;",
            "Lcom/google/android/finsky/api/model/Document;",
            "Landroid/accounts/Account;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->filteredOffers:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->filteredOffers:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->filteredOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v9, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/Common$Offer;

    iget v0, v0, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    invoke-virtual {p3, v0}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->matches(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->filteredOffers:Ljava/util/List;

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->filteredOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    return v4

    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->filteredOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->filteredOffers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/protos/Common$Offer;

    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addOfferAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    move v4, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->filteredOffers:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/DocUtils;->getLowestPricedOffer(Ljava/util/List;Z)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v8

    iget-object v2, v8, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/utils/PurchaseButtonHelper;->shouldAddFullText(Lcom/google/android/finsky/protos/Common$Offer;)Z
    invoke-static {v8}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->access$000(Lcom/google/android/finsky/protos/Common$Offer;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v3, v8, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    :goto_2
    move-object v0, p0

    move v1, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addAction(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/utils/DocUtils$OfferFilter;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->filteredOffers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public addDisambiguationAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V
    .locals 8
    .param p1    # I
    .param p2    # Lcom/google/android/finsky/protos/Common$Offer;
    .param p3    # Lcom/google/android/finsky/api/model/Document;
    .param p4    # Landroid/accounts/Account;

    const/4 v5, 0x0

    iget-object v2, p2, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/utils/PurchaseButtonHelper;->shouldAddFullText(Lcom/google/android/finsky/protos/Common$Offer;)Z
    invoke-static {p2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->access$000(Lcom/google/android/finsky/protos/Common$Offer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p2, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addAction(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/utils/DocUtils$OfferFilter;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    return-void

    :cond_0
    move-object v3, v5

    goto :goto_0
.end method

.method public addOfferAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V
    .locals 8
    .param p1    # I
    .param p2    # Lcom/google/android/finsky/protos/Common$Offer;
    .param p3    # Lcom/google/android/finsky/api/model/Document;
    .param p4    # Landroid/accounts/Account;

    const/4 v5, 0x0

    iget-object v2, p2, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    # invokes: Lcom/google/android/finsky/utils/PurchaseButtonHelper;->shouldAddFullText(Lcom/google/android/finsky/protos/Common$Offer;)Z
    invoke-static {p2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->access$000(Lcom/google/android/finsky/protos/Common$Offer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p2, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    :goto_0
    iget v4, p2, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    move-object v0, p0

    move v1, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addAction(ILjava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/utils/DocUtils$OfferFilter;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    return-void

    :cond_0
    move-object v3, v5

    goto :goto_0
.end method

.method public getAction(I)Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;
    .locals 4
    .param p1    # I

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actions:[Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Request for invalid action #%d (%d available actions)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAction()Z
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 1

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->displayAsOwned:Z

    iput v2, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->backend:I

    iput v2, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    iput-object v3, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->listingOfferText:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->listingOfferFullText:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actions:[Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
