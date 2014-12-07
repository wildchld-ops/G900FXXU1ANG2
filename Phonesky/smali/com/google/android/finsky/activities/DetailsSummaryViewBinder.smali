.class public Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.super Ljava/lang/Object;
.source "DetailsSummaryViewBinder.java"


# static fields
.field private static final THUMBNAIL_IMAGE_TYPES:[I


# instance fields
.field protected final mAccount:Landroid/accounts/Account;

.field protected mBindingDynamicSection:Z

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected mButtonSection:Landroid/view/ViewGroup;

.field protected mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

.field protected mContext:Landroid/content/Context;

.field protected mContinueUrl:Ljava/lang/String;

.field protected mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field protected mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field protected mDoc:Lcom/google/android/finsky/api/model/Document;

.field protected mDynamicSection:Landroid/view/ViewGroup;

.field protected final mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field protected mExternalReferrer:Ljava/lang/String;

.field protected mHasExtraInfo:Z

.field protected mHideDynamicFeatures:Z

.field private mIsCancelingPreorder:Z

.field protected mIsPendingRefund:Z

.field private mLayouts:[Landroid/view/View;

.field protected mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected mOptimalDeviceClassWarningView:Landroid/widget/TextView;

.field protected mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->THUMBNAIL_IMAGE_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger(Landroid/accounts/Account;)Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mIsCancelingPreorder:Z

    return p1
.end method

.method private configureActionButton(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/library/Libraries;)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    new-instance v6, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    invoke-direct {v6}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;-><init>()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {p2, p3, v6}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getActionStyleLong(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;)V

    :goto_0
    const/4 v7, 0x0

    invoke-static {p2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->canCreateClickListener(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mExternalReferrer:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContinueUrl:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getActionClickListener(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v7

    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->getString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0, v7}, Lcom/google/android/play/layout/PlayActionButton;->configure(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-static {p2, p3, v6}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getActionStyle(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;)V

    goto :goto_0

    :cond_1
    iget v0, p2, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    iget-object v0, p2, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->document:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p2, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->account:Landroid/accounts/Account;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->getCancelPreorderClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;

    move-result-object v7

    goto :goto_1

    :cond_2
    iget v0, p2, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    iget-object v0, p2, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->document:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p2, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->account:Landroid/accounts/Account;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->getDownloadClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;

    move-result-object v7

    goto :goto_1

    :cond_3
    const-string v0, "Can\'t create a click listener for action %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p2, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private configureCancelButton(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mIsCancelingPreorder:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/play/layout/PlayActionButton;->setEnabled(Z)V

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const v1, 0x7f09019d

    invoke-virtual {p0, p2, p3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->getCancelPreorderClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getDiscountOfferNote(Lcom/google/android/finsky/library/Libraries;)Ljava/lang/CharSequence;
    .locals 10

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v7}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v2

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-static {v7, v8, v2}, Lcom/google/android/finsky/utils/DocUtils;->getOfferWithLargestDiscountIfAny(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v7, v6}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->getListPriceNoteResourceId(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;)I

    move-result v5

    iget-object v0, v6, Lcom/google/android/finsky/protos/Common$Offer;->formattedFullAmount:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v7, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v7, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v7}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v1

    const/16 v9, 0x11

    invoke-virtual {v3, v7, v1, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private static getListPriceNoteResourceId(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/Common$Offer;)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    iget v1, p1, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const v2, 0x7f090350

    :goto_0
    return v2

    :pswitch_1
    const v2, 0x7f09034e

    goto :goto_0

    :pswitch_2
    const v2, 0x7f09034f

    goto :goto_0

    :pswitch_3
    const v2, 0x7f090351

    goto :goto_0

    :pswitch_4
    const v2, 0x7f090352

    goto :goto_0

    :cond_1
    const v2, 0x7f09034d

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupOfferNote()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const v7, 0x7f0800f5

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->shouldDisplayOfferNote()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getOfferNote()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-static {v7, v1, v8}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7, v11}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/api/model/Document;->isPreorderOffer(Lcom/google/android/finsky/protos/Common$Offer;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-wide v3, v6, Lcom/google/android/finsky/protos/Common$Offer;->onSaleDate:J

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v8, 0x7f09019c

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/DateUtils;->formatShortDisplayDateUtc(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v5, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isHideSalesPricesExperimentEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->getDiscountOfferNote(Lcom/google/android/finsky/library/Libraries;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v11, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mHasExtraInfo:Z

    goto :goto_0
.end method


# virtual methods
.method public varargs bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V
    .locals 2

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mLayouts:[Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iput-boolean p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBindingDynamicSection:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupItemDetails()V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupOfferNote()V

    const v1, 0x7f0800f6

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    const v1, 0x7f0800f7

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mButtonSection:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->syncDynamicSection()V

    :cond_0
    const v1, 0x7f0800f3

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mHasExtraInfo:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method protected configureLaunchButton(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/play/layout/PlayActionButton;->setEnabled(Z)V

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getOpenButtonStringId(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v2, p2, p3, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected displayActionButtonsIfNecessary(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;)Z
    .locals 17

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v12, v3}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-static {v3, v12, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/api/model/Document;->isPreorderOffer(Lcom/google/android/finsky/protos/Common$Offer;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v14}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->configureCancelButton(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v14}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->configureLaunchButton(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-static {v3, v4, v13}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupBuyButtons(Landroid/accounts/Account;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->hasSample()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p4, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v4, 0x2

    invoke-static {v3, v13, v4}, Lcom/google/android/finsky/utils/LibraryUtils;->isOfferOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    const v4, 0x7f09017a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    :cond_3
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v15

    const v16, 0x7f09017a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mExternalReferrer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContinueUrl:Ljava/lang/String;

    const/16 v9, 0xde

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v3

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1, v3}, Lcom/google/android/play/layout/PlayActionButton;->configure(IILandroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method protected displayActionButtonsIfNecessaryNew(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;)Z
    .locals 12

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v11, 0x0

    new-instance v7, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    invoke-direct {v7}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;-><init>()V

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static/range {v1 .. v7}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getDocumentActions(Landroid/accounts/Account;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V

    const/4 v10, 0x0

    :goto_0
    iget v1, v7, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    if-ge v10, v1, :cond_0

    const/4 v1, 0x2

    if-lt v11, v1, :cond_1

    const-string v1, "Not supposed to have more than %d actions available"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->hasAction()Z

    move-result v1

    return v1

    :cond_1
    invoke-virtual {v7, v10}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->getAction(I)Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    move-result-object v8

    iget v1, v8, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget v1, v8, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    :cond_2
    iget v1, v7, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->backend:I

    invoke-direct {p0, p1, v8, v1, v3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->configureActionButton(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/library/Libraries;)V

    add-int/lit8 v11, v11, 0x1

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    iget v1, v8, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_4

    iget v1, v8, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    :cond_4
    iget v1, v7, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->backend:I

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v8, v1, v3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->configureActionButton(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/library/Libraries;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    iget v1, v8, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    iget v1, v7, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->backend:I

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v8, v1, v3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->configureActionButton(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/library/Libraries;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    if-nez v9, :cond_7

    iget v1, v7, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->backend:I

    invoke-direct {p0, p2, v8, v1, v3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->configureActionButton(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/library/Libraries;)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    iget v1, v7, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->backend:I

    invoke-direct {p0, p3, v8, v1, v3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->configureActionButton(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/library/Libraries;)V

    goto :goto_2
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mLayouts:[Landroid/view/View;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected getBuyButtonLoggingElementType(ZI)I
    .locals 3

    const/16 v0, 0xdd

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0xe1

    goto :goto_0

    :cond_2
    const/16 v0, 0xc8

    goto :goto_0
.end method

.method protected final getBuyButtonString(ZI)Ljava/lang/String;
    .locals 8

    const v7, 0x7f09014f

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4, p2}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v5, 0x7f09017c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v4

    const-string v5, "cl:billing.show_buy_verb_in_button"

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4, p2}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-boolean v4, v2, Lcom/google/android/finsky/protos/Common$Offer;->hasFormattedAmount:Z

    if-eqz v4, :cond_4

    iget-object v0, v2, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v5, 0x7f090168

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method protected getCancelPreorderClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)V

    return-object v0
.end method

.method protected getDownloadClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    iput-object p6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mExternalReferrer:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContinueUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x7

    if-ne p1, v5, :cond_0

    const-string v5, "DetailsSummaryViewBinder.doc"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    const-string v5, "DetailsSummaryViewBinder.ownerAccountName"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v4, Lcom/google/android/finsky/library/RevokeListenerWrapper;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v5

    invoke-interface {v0}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    new-instance v7, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$3;

    invoke-direct {v7, p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$3;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/finsky/library/RevokeListenerWrapper;-><init>(Lcom/google/android/finsky/library/LibraryReplicators;Landroid/accounts/Account;Lcom/android/volley/Response$Listener;)V

    new-instance v2, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$4;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$4;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;)V

    iput-boolean v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mIsCancelingPreorder:Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->refresh()V

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v8, v4, v2}, Lcom/google/android/finsky/api/DfeApi;->revoke(Ljava/lang/String;ILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBindingDynamicSection:Z

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mLayouts:[Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    return-void
.end method

.method public setDynamicFeaturesVisibility(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mHideDynamicFeatures:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setupActionButtons(Z)V
    .locals 8

    const/16 v7, 0x8

    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/layout/PlayActionButton;

    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/layout/PlayActionButton;

    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/layout/PlayActionButton;

    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/layout/PlayActionButton;

    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/layout/PlayActionButton;

    invoke-virtual {v1, v7}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    if-eqz v4, :cond_0

    invoke-virtual {v4, v7}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    :cond_0
    invoke-virtual {v2, v7}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    if-eqz v3, :cond_1

    invoke-virtual {v3, v7}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5, v7}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mHideDynamicFeatures:Z

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-nez p1, :cond_3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->displayActionButtonsIfNecessary(Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mButtonSection:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupBuyButtons(Landroid/accounts/Account;Lcom/google/android/play/layout/PlayActionButton;Lcom/google/android/play/layout/PlayActionButton;Z)V
    .locals 11

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/protos/Common$Offer;

    move-result-object v9

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v4}, Lcom/google/android/play/layout/PlayActionButton;->setVisibility(I)V

    invoke-static {v9}, Lcom/google/android/finsky/api/model/Document;->isPreorderOffer(Lcom/google/android/finsky/protos/Common$Offer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v1, 0x7f090175

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v9, Lcom/google/android/finsky/protos/Common$Offer;->formattedAmount:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v6, 0xea

    :goto_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v10

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget v3, v9, Lcom/google/android/finsky/protos/Common$Offer;->offerType:I

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mExternalReferrer:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContinueUrl:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v10, v8, v0}, Lcom/google/android/play/layout/PlayActionButton;->configure(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p4, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->getBuyButtonString(ZI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p4, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->getBuyButtonLoggingElementType(ZI)I

    move-result v6

    goto :goto_1
.end method

.method protected setupCreator(Lcom/google/android/finsky/layout/DecoratedTextView;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {v0, v1, p1}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    return-void
.end method

.method protected setupItemDetails()V
    .locals 10

    const/16 v9, 0x8

    const v6, 0x7f08006c

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    const v6, 0x7f0800f1

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupCreator(Lcom/google/android/finsky/layout/DecoratedTextView;)V

    :cond_1
    :goto_0
    const v6, 0x7f0800f2

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const v6, 0x7f0200c4

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    const v6, 0x7f0800bf

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/layout/PlayCardThumbnail;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/android/play/layout/PlayCardThumbnail;->updatePadding(I)V

    invoke-virtual {v2}, Lcom/google/android/play/layout/PlayCardThumbnail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v7

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getRegularDetailsIconHeight(Landroid/content/Context;I)I

    move-result v6

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/play/layout/PlayCardThumbnail;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/DocImageView;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    sget-object v8, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->THUMBNAIL_IMAGE_TYPES:[I

    invoke-virtual {v3, v6, v7, v8}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;[I)V

    iget-boolean v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBindingDynamicSection:Z

    invoke-virtual {v3, v6}, Lcom/google/android/finsky/layout/DocImageView;->setFocusable(Z)V

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getItemThumbnailContentDescription(Lcom/google/android/finsky/api/model/Document;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/finsky/layout/DocImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBindingDynamicSection:Z

    if-eqz v6, :cond_4

    new-instance v6, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;)V

    invoke-virtual {v3, v6}, Lcom/google/android/finsky/layout/DocImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v6, 0x7f0800f8

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mOptimalDeviceClassWarningView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mOptimalDeviceClassWarningView:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->hasOptimalDeviceClassWarning()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mOptimalDeviceClassWarningView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getOptimalDeviceClassWarning()Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/finsky/protos/DocAnnotations$Warning;->localizedMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mOptimalDeviceClassWarningView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-virtual {v0, v9}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mOptimalDeviceClassWarningView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected shouldDisplayOfferNote()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showDynamicStatus(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    const v2, 0x7f0800fa

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mButtonSection:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected syncDynamicSection()V
    .locals 4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-static {v2, v3, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setDynamicFeaturesVisibility(Z)V

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mHideDynamicFeatures:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mIsPendingRefund:Z

    if-eqz v2, :cond_1

    const v2, 0x7f09021e

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->showDynamicStatus(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupActionButtons(Z)V

    goto :goto_0
.end method
