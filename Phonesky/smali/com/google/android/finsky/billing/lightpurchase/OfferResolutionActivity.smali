.class public Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "OfferResolutionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/layout/play/RootUiElementNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$1;,
        Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mOfferFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

.field private final mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/16 v0, 0x30c

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-void
.end method

.method private applyOfferFilter(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mOfferFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mOfferFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    iget-object v3, v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->offer:Lcom/google/android/finsky/protos/Common$Offer;

    iget v3, v3, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->matches(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static createIntent(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/DocUtils$OfferFilter;)Landroid/content/Intent;
    .locals 3
    .param p0    # Lcom/google/android/finsky/api/model/DfeToc;
    .param p1    # Landroid/accounts/Account;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/finsky/api/model/Document;
    .param p4    # Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "OfferResolutionActivity.dfeToc"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "OfferResolutionActivity.account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "OfferResolutionActivity.docid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OfferResolutionActivity.doc"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    const-string v1, "OfferResolutionActivity.offerFilter"

    invoke-virtual {p4}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static extractAvailableOffer(Landroid/content/Intent;)Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;
    .locals 6
    .param p0    # Landroid/content/Intent;

    const-string v0, "OfferResolutionActivity.docid"

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/protos/Common$Docid;

    const-string v0, "OfferResolutionActivity.docidStr"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "OfferResolutionActivity.offer"

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/protos/Common$Offer;

    const-string v0, "OfferResolutionActivity.serverLogsCookie"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;-><init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;Lcom/google/android/finsky/protos/Common$Offer;[BLcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$1;)V

    return-object v0
.end method

.method private getAvailableOffers()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v13

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasSubscriptions()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v4}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/DocUtils;->getSubscriptions(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v14, v6}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "Skipping subscription doc, no PURCHASE offer: %s"

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getFullDocid()Lcom/google/android/finsky/protos/Common$Docid;

    move-result-object v1

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;-><init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;Lcom/google/android/finsky/protos/Common$Offer;[BLcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$1;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/protos/Common$Offer;

    iget v0, v9, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    new-instance v6, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getFullDocid()Lcom/google/android/finsky/protos/Common$Docid;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v10

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;-><init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;Lcom/google/android/finsky/protos/Common$Offer;[BLcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$1;)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v13
.end method

.method private hideLoading()V
    .locals 2

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    new-instance v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090212

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "OfferResolutionActivity.errorDialog"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showLoading()V
    .locals 4

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    const/16 v3, 0xd5

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method private updateFromDoc()V
    .locals 24

    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->hideLoading()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    const/16 v22, 0x30d

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move/from16 v3, v22

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const v19, 0x7f080165

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->getAvailableOffers()Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->applyOfferFilter(Ljava/util/List;)V

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    const v19, 0x7f090085

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->showError(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_0

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;

    const v19, 0x7f04008f

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v9, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const v19, 0x7f08006c

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v19, 0x7f080166

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v19, 0x7f080167

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v19, 0x7f08006d

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v0, v5, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->offer:Lcom/google/android/finsky/protos/Common$Offer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/protos/Common$Offer;->formattedName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v5, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->offer:Lcom/google/android/finsky/protos/Common$Offer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getSecondaryTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isHideSalesPricesExperimentEnabled()Z

    move-result v12

    iget-object v0, v5, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->offer:Lcom/google/android/finsky/protos/Common$Offer;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/utils/DocUtils;->hasDiscount(Lcom/google/android/finsky/protos/Common$Offer;)Z

    move-result v19

    if-eqz v19, :cond_3

    if-nez v12, :cond_3

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v5, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->offer:Lcom/google/android/finsky/protos/Common$Offer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v19

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0900b7

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    iget-object v0, v5, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->offer:Lcom/google/android/finsky/protos/Common$Offer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, v5, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->offer:Lcom/google/android/finsky/protos/Common$Offer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/protos/Common$Offer;->formattedDescription:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    iget-object v0, v5, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->offer:Lcom/google/android/finsky/protos/Common$Offer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/finsky/protos/Common$Offer;->formattedDescription:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v19, v15, -0x1

    move/from16 v0, v19

    if-ge v13, v0, :cond_2

    const v19, 0x7f040091

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v9, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const-string v0, "Not using tree impressions."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public finish()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v1, 0x0

    const/16 v3, 0x25b

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public flushImpression()V
    .locals 2

    const-string v0, "Not using tree impressions."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mUiElement:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "OfferResolutionActivity.docid"

    iget-object v3, v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->docid:Lcom/google/android/finsky/protos/Common$Docid;

    invoke-static {v3}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "OfferResolutionActivity.docidStr"

    iget-object v3, v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->docidStr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "OfferResolutionActivity.offer"

    iget-object v3, v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->offer:Lcom/google/android/finsky/protos/Common$Offer;

    invoke-static {v3}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "OfferResolutionActivity.serverLogsCookie"

    iget-object v3, v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->serverLogsCookie:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v3, 0x30e

    iget-object v4, v0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity$AvailableOffer;->serverLogsCookie:[B

    invoke-virtual {v2, v3, v4, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f04008e

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "OfferResolutionActivity.dfeToc"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/DfeToc;

    iput-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    const-string v3, "OfferResolutionActivity.account"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    iput-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mAccount:Landroid/accounts/Account;

    const v3, 0x7f08006c

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090177

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v3, "OfferResolutionActivity.docid"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "OfferResolutionActivity.doc"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    iput-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const-string v3, "OfferResolutionActivity.offerFilter"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "OfferResolutionActivity.offerFilter"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/DocUtils$OfferFilter;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mOfferFilter:Lcom/google/android/finsky/utils/DocUtils$OfferFilter;

    :cond_0
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mEventLog:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_1
    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->showLoading()V

    new-instance v3, Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v4

    invoke-static {v0}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v3, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v3, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->updateFromDoc()V

    goto :goto_0
.end method

.method public onDataChanged()V
    .locals 6

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-nez v2, :cond_0

    const v2, 0x7f090085

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->showError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v2}, Lcom/google/android/finsky/utils/DocUtils;->getAvailabilityRestrictionResourceId(Lcom/google/android/finsky/api/model/Document;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->showError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->updateFromDoc()V

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1    # Lcom/android/volley/VolleyError;

    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/lightpurchase/OfferResolutionActivity;->mDfeDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public startNewImpression()V
    .locals 2

    const-string v0, "Not using impression id\'s."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
