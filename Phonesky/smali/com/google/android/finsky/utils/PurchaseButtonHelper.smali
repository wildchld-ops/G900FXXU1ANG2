.class public Lcom/google/android/finsky/utils/PurchaseButtonHelper;
.super Ljava/lang/Object;
.source "PurchaseButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;,
        Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;,
        Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;
    }
.end annotation


# direct methods
.method static synthetic access$000(Lcom/google/android/finsky/protos/Common$Offer;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/protos/Common$Offer;

    invoke-static {p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->shouldAddFullText(Lcom/google/android/finsky/protos/Common$Offer;)Z

    move-result v0

    return v0
.end method

.method private static addOfferActions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;Landroid/accounts/Account;Lcom/google/android/finsky/library/Library;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V
    .locals 17
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # Lcom/google/android/finsky/protos/Common$Offer;
    .param p2    # Landroid/accounts/Account;
    .param p3    # Lcom/google/android/finsky/library/Library;
    .param p4    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    const/4 v4, 0x4

    move-object/from16 v0, p4

    iput v4, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->listingOfferText:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->shouldAddFullText(Lcom/google/android/finsky/protos/Common$Offer;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v4, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->listingOfferFullText:Ljava/lang/String;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getSampleOffer(Ljava/util/List;)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v16

    if-eqz v16, :cond_2

    const/4 v11, 0x1

    :goto_0
    if-eqz v11, :cond_3

    const/4 v4, 0x1

    :goto_1
    rsub-int/lit8 v10, v4, 0x2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_9

    const/4 v12, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_a

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/finsky/protos/Common$Offer;

    iget v14, v13, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    const/4 v4, 0x2

    if-ne v14, v4, :cond_4

    :cond_1
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    const/16 v4, 0xb

    if-eq v14, v4, :cond_1

    invoke-static {v13}, Lcom/google/android/finsky/api/model/Document;->isPreorderOffer(Lcom/google/android/finsky/protos/Common$Offer;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x5

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v4, v13, v1, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addOfferAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    goto :goto_3

    :cond_5
    sget-object v4, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->RENTAL:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    invoke-virtual {v4, v14}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->matches(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v4, v13, v1, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addOfferAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    goto :goto_3

    :cond_6
    sget-object v4, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->PURCHASE:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    invoke-virtual {v4, v14}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->matches(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-wide v4, v13, Lcom/google/android/finsky/protos/Common$Offer;->micros:J

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-nez v4, :cond_7

    const/4 v4, 0x7

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v4, v13, v1, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addOfferAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    goto :goto_3

    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v4, v13, v1, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addOfferAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    goto :goto_3

    :cond_8
    const-string v4, "Don\'t know how to show action for offer type %d on document %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    aput-object p0, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    const/4 v4, 0x2

    if-lt v10, v4, :cond_c

    const/4 v15, 0x0

    const/4 v5, 0x1

    sget-object v7, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->PURCHASE:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    move-object/from16 v4, p4

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addActionFromOfferList(ILjava/util/List;Lcom/google/android/finsky/utils/DocUtils$OfferFilter;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)I

    move-result v4

    add-int/2addr v15, v4

    const/4 v5, 0x3

    sget-object v7, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->RENTAL:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    move-object/from16 v4, p4

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addActionFromOfferList(ILjava/util/List;Lcom/google/android/finsky/utils/DocUtils$OfferFilter;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)I

    move-result v4

    add-int/2addr v15, v4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-eq v15, v4, :cond_a

    const-string v4, "Could only handle %d of %d offers"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_4
    if-eqz v11, :cond_b

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v4, 0xa

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addOfferAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    :cond_b
    :goto_5
    return-void

    :cond_c
    const/4 v4, 0x1

    if-ne v10, v4, :cond_d

    const/16 v4, 0xd

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addDisambiguationAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    goto :goto_4

    :cond_d
    const-string v4, "We ran out of buttons without displaying any offers?"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_e
    const/16 v4, 0xb

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addOfferAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    goto :goto_5
.end method

.method public static canCreateClickListener(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;)Z
    .locals 2
    .param p0    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getActionClickListener(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;
    .locals 10
    .param p0    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;
    .param p1    # I
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v3, 0x4

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unrecognized action %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->document:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->account:Landroid/accounts/Account;

    invoke-virtual {p2, v0, v2, p5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerType:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    const/16 v1, 0xe8

    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;

    move-object v2, p5

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$1;-><init>(ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p1, v3, :cond_1

    const/16 v1, 0xe7

    goto :goto_1

    :cond_1
    const/16 v1, 0xc8

    goto :goto_1

    :pswitch_3
    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerType:I

    if-ne v0, v3, :cond_2

    const/16 v1, 0xe5

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_3

    const/16 v1, 0xe4

    goto :goto_1

    :cond_3
    const/16 v1, 0xc8

    goto :goto_1

    :pswitch_4
    const/16 v1, 0xc8

    goto :goto_1

    :pswitch_5
    const/16 v1, 0xc8

    goto :goto_1

    :pswitch_6
    const/16 v1, 0xe2

    goto :goto_1

    :pswitch_7
    const/16 v1, 0xdd

    goto :goto_1

    :pswitch_8
    const/16 v1, 0xd9

    goto :goto_1

    :pswitch_9
    const/16 v1, 0xde

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->account:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->document:Lcom/google/android/finsky/api/model/Document;

    iget v5, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerType:I

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    move v8, v1

    move-object v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getActionStatus(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;)V
    .locals 4
    .param p0    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;
    .param p1    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->reset()V

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Expected to have an available action with status %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_1
    const v0, 0x7f09020f

    iput v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090210

    iput v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090132

    iput v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :pswitch_4
    const v0, 0x7f090134

    iput v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getActionStyle(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;)V
    .locals 1
    .param p0    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;
    .param p1    # I
    .param p2    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getActionStyleForFormat(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;IZLcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;)V

    return-void
.end method

.method private static getActionStyleForFormat(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;IZLcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;)V
    .locals 4
    .param p0    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;
    .param p1    # I
    .param p2    # Z
    .param p3    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    const/4 v1, 0x4

    invoke-virtual {p3}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->reset()V

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unrecognized action %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f090174

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerType:I

    if-nez v0, :cond_0

    const v0, 0x7f09016f

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerText:Ljava/lang/String;

    iput-object v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerText:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerFullText:Ljava/lang/String;

    iput-object v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerFullText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_2

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const v0, 0x7f09016e

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_1

    :cond_1
    const v0, 0x7f09016d

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_1

    :cond_2
    const v0, 0x7f090168

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerType:I

    if-nez v0, :cond_3

    const v0, 0x7f09016c

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    :goto_2
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerText:Ljava/lang/String;

    iput-object v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerText:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerFullText:Ljava/lang/String;

    iput-object v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerFullText:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_5

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerType:I

    if-ne v0, v1, :cond_4

    const v0, 0x7f09016a

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_2

    :cond_4
    const v0, 0x7f09016b

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_2

    :cond_5
    const v0, 0x7f090169

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_2

    :pswitch_3
    const v0, 0x7f090170

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerText:Ljava/lang/String;

    iput-object v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerText:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerFullText:Ljava/lang/String;

    iput-object v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerFullText:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const v0, 0x7f090175

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerText:Ljava/lang/String;

    iput-object v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerText:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerFullText:Ljava/lang/String;

    iput-object v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerFullText:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    if-eqz p2, :cond_6

    const v0, 0x7f090172

    :goto_3
    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerText:Ljava/lang/String;

    iput-object v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerText:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->offerFullText:Ljava/lang/String;

    iput-object v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerFullText:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const v0, 0x7f090171

    goto :goto_3

    :pswitch_6
    packed-switch p1, :pswitch_data_1

    :pswitch_7
    const v0, 0x7f09017c

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto/16 :goto_0

    :pswitch_8
    const v0, 0x7f09014e

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto/16 :goto_0

    :pswitch_9
    const v0, 0x7f09017e

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto/16 :goto_0

    :pswitch_a
    const v0, 0x7f09014d

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto/16 :goto_0

    :pswitch_b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    const v0, 0x7f09014f

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    const v0, 0x7f09035b

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto/16 :goto_0

    :cond_8
    const v0, 0x7f0902fa

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto/16 :goto_0

    :pswitch_c
    const v0, 0x7f090136

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto/16 :goto_0

    :pswitch_d
    const v0, 0x7f09019d

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto/16 :goto_0

    :pswitch_e
    const v0, 0x7f09017a

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto/16 :goto_0

    :pswitch_f
    const v0, 0x7f09017b

    iput v0, p3, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getActionStyleLong(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;)V
    .locals 1
    .param p0    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;
    .param p1    # I
    .param p2    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getActionStyleForFormat(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;IZLcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;)V

    return-void
.end method

.method private static getActionsForApp(Landroid/accounts/Account;Landroid/accounts/Account;ZLcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/library/Library;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V
    .locals 5
    .param p0    # Landroid/accounts/Account;
    .param p1    # Landroid/accounts/Account;
    .param p2    # Z
    .param p3    # Lcom/google/android/finsky/receivers/Installer;
    .param p4    # Lcom/google/android/finsky/library/Library;
    .param p5    # Lcom/google/android/finsky/library/Libraries;
    .param p6    # Lcom/google/android/finsky/appstate/AppStates;
    .param p7    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p8    # Lcom/google/android/finsky/api/model/Document;
    .param p9    # Lcom/google/android/finsky/protos/Common$Offer;
    .param p10    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    const/4 v3, 0x0

    iput-boolean v3, p10, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->displayAsOwned:Z

    if-nez p9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    :goto_1
    invoke-virtual {p8}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    invoke-virtual {p8}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v2

    new-instance v1, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-object v3, v2, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-direct {v1, v3, p6, p5}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    iget-boolean v3, v1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-eqz v3, :cond_6

    iget-boolean v3, v1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabled:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    iput v3, p10, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, p10, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->displayAsOwned:Z

    goto :goto_0

    :cond_2
    move-object v0, p0

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p8}, Lcom/google/android/finsky/activities/AppActionAnalyzer;->hasUpdateAvailable(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-interface {p3, v3}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-eq v3, v4, :cond_4

    const/16 v3, 0x9

    iput v3, p10, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    goto :goto_2

    :cond_4
    const/16 v3, 0x8

    invoke-virtual {p10, v3, p9, p8, v0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addOfferAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    const/4 v3, 0x5

    iput v3, p10, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    goto :goto_2

    :cond_5
    const/4 v3, 0x6

    invoke-virtual {p10, v3, p8, v0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addAction(ILcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    goto :goto_2

    :cond_6
    iget-object v3, v2, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->packageName:Ljava/lang/String;

    invoke-interface {p3, v3}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v3

    sget-object v4, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-eq v3, v4, :cond_7

    const/4 v3, 0x1

    iput v3, p10, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    goto :goto_0

    :cond_7
    invoke-static {p8, p7, p4}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_8

    iget-boolean v3, p9, Lcom/google/android/finsky/protos/Common$Offer;->checkoutFlowRequired:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    iput-boolean v3, p10, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->displayAsOwned:Z

    const/4 v3, 0x7

    invoke-virtual {p10, v3, p9, p8, v0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addOfferAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    const/4 v3, 0x6

    iput v3, p10, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    goto :goto_0

    :cond_8
    invoke-static {p8, p7, p4}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p8, p9, v0, p4, p10}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->addOfferActions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;Landroid/accounts/Account;Lcom/google/android/finsky/library/Library;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V

    goto :goto_0
.end method

.method private static getActionsForMagazine(Landroid/accounts/Account;Lcom/google/android/finsky/library/Library;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V
    .locals 8
    .param p0    # Landroid/accounts/Account;
    .param p1    # Lcom/google/android/finsky/library/Library;
    .param p2    # Lcom/google/android/finsky/library/Libraries;
    .param p3    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p4    # Lcom/google/android/finsky/api/model/Document;
    .param p5    # Lcom/google/android/finsky/protos/Common$Offer;
    .param p6    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    if-eqz p5, :cond_0

    iget-object v4, p5, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    iput-object v4, p6, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->listingOfferText:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->shouldAddFullText(Lcom/google/android/finsky/protos/Common$Offer;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p5, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    iput-object v4, p6, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->listingOfferFullText:Ljava/lang/String;

    :cond_0
    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    const/16 v5, 0x11

    if-eq v4, v5, :cond_1

    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    const/16 v5, 0x19

    if-ne v4, v5, :cond_8

    :cond_1
    move-object v1, p4

    :goto_0
    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_2

    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    const/16 v5, 0x18

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-static {p4}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineCurrentIssueDocument(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    :cond_3
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-static {v1, p2, p0}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    const/4 v4, 0x1

    iput-boolean v4, p6, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->displayAsOwned:Z

    const/4 v4, 0x6

    invoke-virtual {p6, v4, v1, p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addAction(ILcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    :cond_4
    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Document;->hasSubscriptions()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionsList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, p2, p0}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Ljava/util/List;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_9

    if-nez v1, :cond_5

    const/4 v4, 0x1

    iput-boolean v4, p6, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->displayAsOwned:Z

    const/4 v4, 0x6

    invoke-virtual {p6, v4, p4, p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addAction(ILcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    :cond_5
    const/16 v4, 0x8

    iput v4, p6, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    :cond_6
    :goto_1
    if-nez v3, :cond_7

    if-eqz v1, :cond_7

    invoke-static {v1, p3, p1}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v1, p3, p1}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineIssueOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v4, v2, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    const/4 v4, 0x6

    invoke-virtual {p6, v4, v1, p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addAction(ILcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    :goto_2
    invoke-virtual {p6}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->hasStatus()Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x4

    iput v4, p6, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    :cond_7
    return-void

    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    :cond_9
    invoke-static {p4, p3, p1}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    invoke-virtual {p6, v4, p5, p4, p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addDisambiguationAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    goto :goto_1

    :cond_a
    iget-boolean v4, v2, Lcom/google/android/finsky/protos/Common$Offer;->checkoutFlowRequired:Z

    if-eqz v4, :cond_c

    iget-wide v4, v2, Lcom/google/android/finsky/protos/Common$Offer;->micros:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_b

    const/4 v0, 0x4

    :goto_3
    invoke-virtual {p6, v0, v2, v1, p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addOfferAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    goto :goto_2

    :cond_b
    const/4 v0, 0x7

    goto :goto_3

    :cond_c
    const/4 v4, 0x7

    invoke-virtual {p6, v4, v2, v1, p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addOfferAction(ILcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    const/4 v4, 0x6

    invoke-virtual {p6, v4, v1, p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addAction(ILcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    goto :goto_2
.end method

.method private static getActionsForMovie(Landroid/accounts/Account;ZLcom/google/android/finsky/library/Library;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V
    .locals 3
    .param p0    # Landroid/accounts/Account;
    .param p1    # Z
    .param p2    # Lcom/google/android/finsky/library/Library;
    .param p3    # Lcom/google/android/finsky/library/Libraries;
    .param p4    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p5    # Lcom/google/android/finsky/api/model/Document;
    .param p6    # Lcom/google/android/finsky/protos/Common$Offer;
    .param p7    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    const/4 v2, 0x7

    const/4 v1, 0x6

    if-eqz p1, :cond_3

    invoke-virtual {p7, v1, p5, p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addAction(ILcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    invoke-static {p5, p2, v2}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p5, p2, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iput v1, p7, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    :goto_0
    invoke-static {}, Lcom/google/android/finsky/utils/VendingUtils;->isTv()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xc

    invoke-virtual {p7, v0, p5, p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addAction(ILcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput v2, p7, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    goto :goto_0

    :cond_3
    invoke-static {p5, p4, p2}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p5, p6, p0, p2, p7}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->addOfferActions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;Landroid/accounts/Account;Lcom/google/android/finsky/library/Library;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V

    goto :goto_1
.end method

.method public static getDocumentActions(Landroid/accounts/Account;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V
    .locals 22
    .param p0    # Landroid/accounts/Account;
    .param p1    # Lcom/google/android/finsky/receivers/Installer;
    .param p2    # Lcom/google/android/finsky/library/Libraries;
    .param p3    # Lcom/google/android/finsky/appstate/AppStates;
    .param p4    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p5    # Lcom/google/android/finsky/api/model/Document;
    .param p6    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->reset()V

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    move-object/from16 v0, p6

    iput v3, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->backend:I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v7

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1, v7}, Lcom/google/android/finsky/utils/DocUtils;->getListingOffer(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v12

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_3

    invoke-static {v12}, Lcom/google/android/finsky/api/model/Document;->isPreorderOffer(Lcom/google/android/finsky/protos/Common$Offer;)Z

    move-result v21

    :goto_2
    move-object/from16 v0, p6

    iput-boolean v5, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->displayAsOwned:Z

    move-object/from16 v0, p6

    iget v3, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->backend:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string v3, "Unsupported backend: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v3, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1, v7}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v0, v12, v1, v7, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->addOfferActions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;Landroid/accounts/Account;Lcom/google/android/finsky/library/Library;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/16 v21, 0x0

    goto :goto_2

    :pswitch_1
    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    invoke-static/range {v3 .. v13}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getActionsForApp(Landroid/accounts/Account;Landroid/accounts/Account;ZLcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/library/Library;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v13, p0

    move-object v14, v7

    move-object/from16 v15, p2

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, v12

    move-object/from16 v19, p6

    invoke-static/range {v13 .. v19}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getActionsForMagazine(Landroid/accounts/Account;Lcom/google/android/finsky/library/Library;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V

    goto :goto_0

    :pswitch_3
    if-eqz v5, :cond_6

    if-eqz v21, :cond_4

    const/16 v3, 0x9

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addAction(ILcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    const/4 v3, 0x3

    move-object/from16 v0, p6

    iput v3, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->addAction(ILcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    const/4 v3, 0x3

    move-object/from16 v0, p5

    invoke-static {v0, v7, v3}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x7

    move-object/from16 v0, p6

    iput v3, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x6

    move-object/from16 v0, p6

    iput v3, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1, v7}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v0, v12, v1, v7, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->addOfferActions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;Landroid/accounts/Account;Lcom/google/android/finsky/library/Library;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v13, p0

    move v14, v5

    move-object v15, v7

    move-object/from16 v16, p2

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v19, v12

    move-object/from16 v20, p6

    invoke-static/range {v13 .. v20}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getActionsForMovie(Landroid/accounts/Account;ZLcom/google/android/finsky/library/Library;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getListingStyle(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;)V
    .locals 4
    .param p0    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;
    .param p1    # Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->reset()V

    invoke-virtual {p0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unrecognized status %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f09020f

    iput v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090210

    iput v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090132

    iput v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090134

    iput v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->listingOfferFullText:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerFullText:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->listingOfferText:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerText:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const v0, 0x7f090136

    iput v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :pswitch_6
    const v0, 0x7f090133

    iput v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :pswitch_7
    const v0, 0x7f090135

    iput v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :pswitch_8
    const v0, 0x7f090137

    iput v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->displayAsOwned:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->backend:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f090131

    iput v0, p1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->resourceId:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
    .end packed-switch
.end method

.method private static getSampleOffer(Ljava/util/List;)Lcom/google/android/finsky/protos/Common$Offer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/protos/Common$Offer;",
            ">;)",
            "Lcom/google/android/finsky/protos/Common$Offer;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/Common$Offer;

    iget v2, v1, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static shouldAddFullText(Lcom/google/android/finsky/protos/Common$Offer;)Z
    .locals 4
    .param p0    # Lcom/google/android/finsky/protos/Common$Offer;

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasMicros:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFullPriceMicros:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedFullAmount:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/finsky/protos/Common$Offer;->fullPriceMicros:J

    iget-wide v2, p0, Lcom/google/android/finsky/protos/Common$Offer;->micros:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
