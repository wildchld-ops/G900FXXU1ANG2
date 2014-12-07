.class public Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "StoredValueTopUpActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
.implements Lcom/google/android/finsky/fragments/SidecarFragment$Listener;
.implements Lcom/google/android/finsky/layout/ButtonBar$ClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

.field private mDocuments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mLastShownErrorId:I

.field private mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingIndicator:Landroid/view/View;

.field private mSelectedDocumentFormattedAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLastShownErrorId:I

    return-void
.end method

.method public static createIntent(Ljava/lang/String;Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "list_url"

    iget-object v2, p1, Lcom/google/android/finsky/protos/CommonDevice$TopupInfo;->optionsListUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private syncPositiveButton()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-ne p1, v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const v2, 0x7f0900a0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mSelectedDocumentFormattedAmount:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->setContentView(I)V

    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLoadingIndicator:Landroid/view/View;

    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ButtonBar;

    iput-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v1, 0x7f090212

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonTitle(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ButtonBar;->setNegativeButtonTitle(I)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/layout/ButtonBar;->setClickListener(Lcom/google/android/finsky/layout/ButtonBar$ClickListener;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->syncPositiveButton()V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mAccountName:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mAccountName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "list_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;
    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->access$000(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    const-string v2, "list_sidecar"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_0
    return-void

    :cond_0
    const-string v0, "selected_document_formatted_amount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mSelectedDocumentFormattedAmount:Ljava/lang/String;

    const-string v0, "last_shown_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLastShownErrorId:I

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "list_sidecar"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    iput-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->syncPositiveButton()V

    return-void
.end method

.method public onNegativeButtonClick()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->finish()V

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    iget-object v5, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mDocuments:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1, v8}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v5, "Document selected without PURCHASE offer. Ignoring."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, v3, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mSelectedDocumentFormattedAmount:Ljava/lang/String;

    new-instance v4, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getFullDocid()Lcom/google/android/finsky/protos/Common$Docid;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v8}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;-><init>(Lcom/google/android/finsky/protos/Common$Docid;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mAccountName:Ljava/lang/String;

    invoke-static {v5, p0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v4, v6, v7}, Lcom/google/android/finsky/billing/lightpurchase/PurchaseActivity;->createIntent(Landroid/accounts/Account;Lcom/google/android/finsky/billing/lightpurchase/PurchaseParams;[BLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2, v8}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->syncPositiveButton()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "last_shown_error"

    iget v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLastShownErrorId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "selected_document_formatted_amount"

    iget-object v1, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mSelectedDocumentFormattedAmount:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->load()V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/google/android/finsky/fragments/SidecarFragment;)V
    .locals 13

    const/4 v12, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/ButtonBar;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getState()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->getDocuments()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mDocuments:Ljava/util/List;

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mDocuments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mDocuments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x109000f

    invoke-direct {v0, p0, v8, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v11}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v11}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mButtonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-virtual {v8, v11}, Lcom/google/android/finsky/layout/ButtonBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->syncPositiveButton()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-ne v6, v10, :cond_3

    iget-object v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    iget v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLastShownErrorId:I

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getStateInstance()I

    move-result v9

    if-ne v8, v9, :cond_4

    const-string v8, "Already showed error %d, ignoring."

    new-array v9, v10, [Ljava/lang/Object;

    iget v10, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLastShownErrorId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getStateInstance()I

    move-result v8

    iput v8, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mLastShownErrorId:I

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getSubstate()I

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    invoke-virtual {v9}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->getLastError()Lcom/android/volley/VolleyError;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_2
    if-eqz v4, :cond_7

    new-instance v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f090212

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setPositiveId(I)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v12, v11, v12}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog$Builder;->build()Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    const-string v9, "error_dialog"

    invoke-virtual {v3, v8, v9}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->getSubstate()I

    move-result v8

    if-ne v8, v10, :cond_5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    const v9, 0x7f09009e

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/FinskyApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    const-string v8, "Received error without error message."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v11}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->finish()V

    goto/16 :goto_1
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity;->mListSidecar:Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/storedvalue/StoredValueTopUpActivity$ListSidecar;->setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    return-void
.end method
