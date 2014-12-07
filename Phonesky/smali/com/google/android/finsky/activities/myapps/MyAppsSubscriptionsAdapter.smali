.class public Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyAppsSubscriptionsAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;
    }
.end annotation


# static fields
.field private static final CORE_IMAGE_TYPES:[I

.field private static final sSubscriptionAbcCollator:Ljava/text/Collator;

.field private static final sSubscriptionAbcSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mListener:Landroid/view/View$OnClickListener;

.field private final mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->sSubscriptionAbcCollator:Ljava/text/Collator;

    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$1;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->sSubscriptionAbcSorter:Ljava/util/Comparator;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->CORE_IMAGE_TYPES:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/LayoutInflater;
    .param p3    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p4    # Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->sSubscriptionAbcCollator:Ljava/text/Collator;

    return-object v0
.end method


# virtual methods
.method public addEntry(Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;)V
    .locals 2
    .param p1    # Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # Lcom/google/android/finsky/api/model/Document;

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    new-instance v1, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDocument(I)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->parentDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->subscriptionDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 25
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const v22, 0x7f0400e0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p3

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->subscriptionOwnership:Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->subscriptionDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter$MyAppsSubscriptionEntry;->parentDoc:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v5, p2

    check-cast v5, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->setArchivable(ZLcom/google/android/finsky/layout/play/PlayCardViewMyApps$OnArchiveActionListener;)V

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->getThumbnail()Lcom/google/android/play/layout/PlayCardThumbnail;

    move-result-object v17

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayCardThumbnail;->updatePadding(I)V

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/play/layout/PlayCardThumbnail;->getImageView()Landroid/widget/ImageView;

    move-result-object v18

    check-cast v18, Lcom/google/android/finsky/layout/DocImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    move-object/from16 v21, v0

    sget-object v22, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->CORE_IMAGE_TYPES:[I

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v10, v1, v2}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;[I)V

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->getTitle()Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->getSubtitle()Lcom/google/android/play/layout/PlayTextView;

    move-result-object v4

    invoke-virtual {v10}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->getPrice()Lcom/google/android/play/layout/PlayCardPriceView;

    move-result-object v13

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;->getBadge()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v15

    iget-boolean v0, v7, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->isAutoRenewing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v0, v7, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->trialUntilTimestampMs:J

    move-wide/from16 v21, v0

    cmp-long v21, v8, v21

    if-gez v21, :cond_2

    const v21, 0x7f090197

    move/from16 v0, v21

    invoke-virtual {v13, v0, v15}, Lcom/google/android/play/layout/PlayCardPriceView;->setText(II)V

    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getSubscriptionDetails()Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/finsky/protos/DocDetails$SubscriptionDetails;->subscriptionPeriod:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const v11, 0x7f09018e

    :goto_2
    const v21, 0x7f09018b

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v21, 0x7f0800d4

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    return-object p2

    :cond_1
    move-object/from16 v21, p2

    check-cast v21, Lcom/google/android/finsky/layout/play/PlayCardViewMyApps;

    invoke-static/range {v21 .. v21}, Lcom/google/android/finsky/utils/PlayCardUtils;->resetLoggingData(Lcom/google/android/play/layout/PlayCardViewBase;)V

    goto/16 :goto_0

    :cond_2
    const v21, 0x7f090196

    move/from16 v0, v21

    invoke-virtual {v13, v0, v15}, Lcom/google/android/play/layout/PlayCardPriceView;->setText(II)V

    goto :goto_1

    :cond_3
    const v11, 0x7f09018f

    goto :goto_2

    :cond_4
    const v21, 0x7f090198

    move/from16 v0, v21

    invoke-virtual {v13, v0, v15}, Lcom/google/android/play/layout/PlayCardPriceView;->setText(II)V

    if-eqz v6, :cond_0

    invoke-virtual {v7}, Lcom/google/android/finsky/library/LibraryInAppSubscriptionEntry;->getValidUntilTimestampMs()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lcom/google/android/finsky/utils/DateUtils;->formatShortDisplayDate(J)Ljava/lang/String;

    move-result-object v20

    const v21, 0x7f090192

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v20, v22, v23

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method sortDocs()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->mSubscriptions:Ljava/util/List;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsSubscriptionsAdapter;->sSubscriptionAbcSorter:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
