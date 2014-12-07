.class public Lcom/google/android/finsky/utils/PlayCardUtils;
.super Ljava/lang/Object;
.source "PlayCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;,
        Lcom/google/android/finsky/utils/PlayCardUtils$CardDismissalAction;
    }
.end annotation


# static fields
.field private static final sActionStyle:Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

.field private static final sDocumentActions:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

.field private static final sListingStyle:Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

.field private static sWindowAttachedCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/play/layout/PlayCardViewBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/PlayCardUtils;->sDocumentActions:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    new-instance v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/PlayCardUtils;->sListingStyle:Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    new-instance v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    invoke-direct {v0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/PlayCardUtils;->sActionStyle:Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/PlayCardUtils;->sWindowAttachedCards:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/google/android/finsky/utils/PlayCardUtils;->updateTrackedCardPrices()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/utils/PlayCardUtils;->sWindowAttachedCards:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/play/layout/PlayPopupMenu;Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 0
    .param p0    # Lcom/google/android/play/layout/PlayPopupMenu;
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # Landroid/accounts/Account;
    .param p4    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static/range {p0 .. p5}, Lcom/google/android/finsky/utils/PlayCardUtils;->configureActions(Lcom/google/android/play/layout/PlayPopupMenu;Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void
.end method

.method static synthetic access$600(I)I
    .locals 1
    .param p0    # I

    invoke-static {p0}, Lcom/google/android/finsky/utils/PlayCardUtils;->convertCardTypeToUiElementType(I)I

    move-result v0

    return v0
.end method

.method public static bindCard(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 10
    .param p0    # Lcom/google/android/play/layout/PlayCardViewBase;
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p3    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p4    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v5

    move-object v7, p4

    invoke-static/range {v0 .. v9}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindCard(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;ZI)V

    return-void
.end method

.method public static bindCard(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;ZI)V
    .locals 30
    .param p0    # Lcom/google/android/play/layout/PlayCardViewBase;
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p3    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p4    # Z
    .param p5    # Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;
    .param p6    # Lcom/google/android/finsky/layout/play/PlayCardDismissListener;
    .param p7    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .param p8    # Z
    .param p9    # I

    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/PlayCardUtils;->setLoggingDataIfNecessary(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getLoggingData()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;

    invoke-virtual {v12}, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->getSentImpression()Z

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getData()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/finsky/api/model/Document;

    if-eqz v22, :cond_0

    if-eqz v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Unexpected change in docId from %s to %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v13}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;->getInstance()Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;->getCardCustomizer(Lcom/google/android/play/layout/PlayCardViewBase;)Lcom/google/android/finsky/utils/PlayCardCustomizer;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Lcom/google/android/finsky/utils/PlayCardCustomizer;->preBind(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getTitle()Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v15

    if-ltz p9, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0902ee

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    add-int/lit8 v9, p9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v15, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getThumbnail()Lcom/google/android/play/layout/PlayCardThumbnail;

    move-result-object v27

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayCardThumbnail;->setVisibility(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayCardThumbnail;->updatePadding(I)V

    move-object/from16 v0, p0

    instance-of v4, v0, Lcom/google/android/finsky/utils/PlayCardImageTypeSequence;

    if-eqz v4, :cond_e

    move-object/from16 v4, p0

    check-cast v4, Lcom/google/android/finsky/utils/PlayCardImageTypeSequence;

    invoke-interface {v4}, Lcom/google/android/finsky/utils/PlayCardImageTypeSequence;->getImageTypePreference()[I

    move-result-object v18

    :goto_0
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/play/layout/PlayCardThumbnail;->getImageView()Landroid/widget/ImageView;

    move-result-object v28

    check-cast v28, Lcom/google/android/finsky/layout/DocImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/layout/DocImageView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;[I)V

    if-eqz p8, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/finsky/layout/play/PlayCardClusterMetadata;->getAspectRatio(I)F

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayCardViewBase;->setThumbnailAspectRatio(F)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getSubtitle()Lcom/google/android/play/layout/PlayTextView;

    move-result-object v25

    check-cast v25, Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getRatingBar()Landroid/widget/RatingBar;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getItemBadge()Lcom/google/android/play/layout/PlayTextView;

    move-result-object v19

    check-cast v19, Lcom/google/android/finsky/layout/DecoratedTextView;

    if-eqz v25, :cond_3

    const/4 v4, 0x4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    :cond_3
    if-eqz v21, :cond_4

    const/4 v4, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    :cond_4
    if-eqz v19, :cond_5

    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewBase;->supportsSubtitleAndRating()Z

    move-result v26

    if-eqz v21, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_f

    const/16 v20, 0x1

    :goto_1
    if-nez v26, :cond_6

    if-eqz v20, :cond_10

    :cond_6
    const/16 v23, 0x1

    :goto_2
    if-nez v26, :cond_7

    if-nez v20, :cond_11

    :cond_7
    const/16 v24, 0x1

    :goto_3
    if-eqz v23, :cond_8

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/BadgeUtils;->configureRatingItemSection(Lcom/google/android/finsky/api/model/Document;Landroid/widget/RatingBar;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    :cond_8
    if-eqz v24, :cond_9

    if-eqz v25, :cond_9

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/utils/PlayCardUtils;->getDocDisplaySubtitle(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewBase;->shouldShowInlineCreatorBadge()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/PlayCardUtils;->updatePriceLabel(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayCardViewBase;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getDescription()Lcom/google/android/play/layout/PlayTextView;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/google/android/play/layout/PlayTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/16 v4, 0x8

    :goto_4
    invoke-virtual {v14, v4}, Lcom/google/android/play/layout/PlayTextView;->setVisibility(I)V

    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindCardReasons(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getOverflow()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_b

    if-eqz p1, :cond_b

    if-eqz p4, :cond_13

    const/4 v4, 0x4

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    :goto_5
    if-eqz p4, :cond_14

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayCardViewBase;->setDisplayAsDisabled(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayCardViewBase;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayCardViewBase;->setClickable(Z)V

    :cond_c
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getLoadingIndicator()Landroid/view/View;

    move-result-object v4

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v12}, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getServerLogsCookie()[B

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    if-nez v22, :cond_d

    invoke-virtual {v12}, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    move-result-object v4

    invoke-interface {v4, v12}, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;->childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->setSentImpression(Z)V

    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayCardViewBase;->setVisibility(I)V

    return-void

    :cond_e
    sget-object v18, Lcom/google/android/finsky/utils/PlayCardImageTypeSequence;->CORE_IMAGE_TYPES:[I

    goto/16 :goto_0

    :cond_f
    const/16 v20, 0x0

    goto/16 :goto_1

    :cond_10
    const/16 v23, 0x0

    goto/16 :goto_2

    :cond_11
    const/16 v24, 0x0

    goto/16 :goto_3

    :cond_12
    const/4 v4, 0x0

    goto :goto_4

    :cond_13
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Lcom/google/android/finsky/utils/PlayCardUtils;->configureOverflowView(Lcom/google/android/play/layout/PlayCardViewBase;Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_5

    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayCardViewBase;->setDisplayAsDisabled(Z)V

    if-eqz p3, :cond_c

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/play/layout/PlayCardViewBase;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6
.end method

.method private static bindCardReasons(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 14
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # Lcom/google/android/play/layout/PlayCardViewBase;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p3    # Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p1}, Lcom/google/android/play/layout/PlayCardViewBase;->getReason1()Lcom/google/android/play/layout/PlayCardReason;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/play/layout/PlayCardViewBase;->getReason2()Lcom/google/android/play/layout/PlayCardReason;

    move-result-object v6

    if-nez v0, :cond_1

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/play/layout/PlayCardReason;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/play/layout/PlayCardReason;->setSeparatorVisible(Z)V

    :cond_2
    if-eqz v6, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Lcom/google/android/play/layout/PlayCardReason;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/google/android/play/layout/PlayCardReason;->setSeparatorVisible(Z)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/play/layout/PlayCardViewBase;->getTextOnlyReasonMarginLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSuggestionReasons()Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v2, v13, Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;->reason:[Lcom/google/android/finsky/protos/DocumentV2$Reason;

    array-length v2, v2

    if-nez v2, :cond_5

    :cond_4
    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasOptimalDeviceClassWarning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getOptimalDeviceClassWarning()Lcom/google/android/finsky/protos/DocAnnotations$Warning;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/finsky/protos/DocAnnotations$Warning;->localizedMessage:Ljava/lang/String;

    invoke-virtual {v6, v2, v4}, Lcom/google/android/play/layout/PlayCardReason;->setReasonText(Ljava/lang/CharSequence;I)V

    invoke-virtual {v6}, Lcom/google/android/play/layout/PlayCardReason;->getImageView()Landroid/widget/ImageView;

    move-result-object v12

    check-cast v12, Lcom/google/android/finsky/layout/FifeImageView;

    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/google/android/play/layout/PlayCardReason;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/play/layout/PlayCardViewBase;->getLoggingData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    iget-object v2, v13, Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;->reason:[Lcom/google/android/finsky/protos/DocumentV2$Reason;

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    if-eqz v0, :cond_6

    if-nez v6, :cond_8

    :cond_6
    invoke-static {v13}, Lcom/google/android/finsky/utils/PlayUtils;->findHighestPriorityReason(Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;)Lcom/google/android/finsky/protos/DocumentV2$Reason;

    move-result-object v1

    if-eqz v6, :cond_7

    move-object v0, v6

    :cond_7
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindReason(Lcom/google/android/play/layout/PlayCardReason;Lcom/google/android/finsky/protos/DocumentV2$Reason;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lcom/google/android/play/layout/PlayCardReason;->setSeparatorVisible(Z)V

    invoke-static {v13}, Lcom/google/android/finsky/utils/PlayUtils;->findHighestPriorityReason(Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;)Lcom/google/android/finsky/protos/DocumentV2$Reason;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/google/android/finsky/utils/PlayUtils;->findHighestPriorityReason(Lcom/google/android/finsky/protos/DocumentV2$SuggestionReasons;Lcom/google/android/finsky/protos/DocumentV2$Reason;)Lcom/google/android/finsky/protos/DocumentV2$Reason;

    move-result-object v7

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindReason(Lcom/google/android/play/layout/PlayCardReason;Lcom/google/android/finsky/protos/DocumentV2$Reason;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindReason(Lcom/google/android/play/layout/PlayCardReason;Lcom/google/android/finsky/protos/DocumentV2$Reason;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    goto/16 :goto_0
.end method

.method private static bindReason(Lcom/google/android/play/layout/PlayCardReason;Lcom/google/android/finsky/protos/DocumentV2$Reason;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;ILcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 23
    .param p0    # Lcom/google/android/play/layout/PlayCardReason;
    .param p1    # Lcom/google/android/finsky/protos/DocumentV2$Reason;
    .param p2    # Lcom/google/android/finsky/utils/BitmapLoader;
    .param p3    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p4    # I
    .param p5    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/play/layout/PlayCardReason;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardReason;->getImageView()Landroid/widget/ImageView;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/layout/FifeImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/play/layout/PlayCardReason;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonReview:Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;

    if-eqz v12, :cond_f

    iget-object v14, v12, Lcom/google/android/finsky/protos/DocumentV2$ReasonReview;->review:Lcom/google/android/finsky/protos/DocumentV2$Review;

    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    const/4 v6, 0x1

    :goto_2
    iget v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->starRating:I

    move/from16 v17, v0

    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    const/4 v8, 0x1

    :goto_3
    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    const/4 v7, 0x1

    :goto_4
    if-eqz v6, :cond_9

    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_5

    const v19, 0x7f0e000e

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x3

    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    :goto_5
    invoke-static {v15}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/layout/PlayCardReason;->setReasonText(Ljava/lang/CharSequence;I)V

    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    const/16 v19, 0x4

    invoke-static/range {v18 .. v19}, Lcom/google/android/finsky/utils/DocV2Utils;->getFirstImageOfType(Lcom/google/android/finsky/protos/DocumentV2$DocV2;I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v11

    :goto_6
    if-eqz v11, :cond_e

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v10, v0, v1, v2}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindReasonUser(Lcom/google/android/finsky/layout/FifeImageView;Lcom/google/android/finsky/protos/DocumentV2$DocV2;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_5
    if-nez v7, :cond_6

    if-eqz v8, :cond_8

    :cond_6
    const v20, 0x7f0e000f

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v19, 0x0

    aput-object v3, v21, v19

    const/16 v19, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v21, v19

    const/16 v22, 0x2

    if-eqz v7, :cond_7

    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_7
    aput-object v19, v21, v22

    move/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_7
    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    goto :goto_7

    :cond_8
    const v19, 0x7f0e0011

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    :cond_9
    if-nez v7, :cond_a

    if-eqz v8, :cond_c

    :cond_a
    const v20, 0x7f0e0010

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v21, v19

    const/16 v22, 0x1

    if-eqz v7, :cond_b

    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_8
    aput-object v19, v21, v22

    move/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    :cond_b
    iget-object v0, v14, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    goto :goto_8

    :cond_c
    const v19, 0x7f0e0012

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_6

    :cond_e
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->reasonPlusProfiles:Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;

    iget-object v0, v9, Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;->person:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v4, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v4, v0, :cond_10

    iget-object v0, v9, Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;->person:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v5, v19, v20

    iget-object v0, v9, Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;->person:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v16, v19, v20

    const v19, 0x7f0902b4

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/layout/PlayCardReason;->setReasonText(Ljava/lang/CharSequence;I)V

    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/google/android/finsky/utils/DocV2Utils;->getFirstImageOfType(Lcom/google/android/finsky/protos/DocumentV2$DocV2;I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v10, v5, v0, v1}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindReasonUser(Lcom/google/android/finsky/layout/FifeImageView;Lcom/google/android/finsky/protos/DocumentV2$DocV2;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_10
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_11

    iget-object v0, v9, Lcom/google/android/finsky/protos/DocumentV2$ReasonPlusProfiles;->person:[Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v5, v19, v20

    const v19, 0x7f0902b3

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/layout/PlayCardReason;->setReasonText(Ljava/lang/CharSequence;I)V

    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/google/android/finsky/utils/DocV2Utils;->getFirstImageOfType(Lcom/google/android/finsky/protos/DocumentV2$DocV2;I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v10, v5, v0, v1}, Lcom/google/android/finsky/utils/PlayCardUtils;->bindReasonUser(Lcom/google/android/finsky/layout/FifeImageView;Lcom/google/android/finsky/protos/DocumentV2$DocV2;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_11
    const-string v19, "Server returned plus profile reason with no profiles"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/finsky/protos/DocumentV2$Reason;->descriptionHtml:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/layout/PlayCardReason;->setReasonText(Ljava/lang/CharSequence;I)V

    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private static bindReasonUser(Lcom/google/android/finsky/layout/FifeImageView;Lcom/google/android/finsky/protos/DocumentV2$DocV2;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 1
    .param p0    # Lcom/google/android/finsky/layout/FifeImageView;
    .param p1    # Lcom/google/android/finsky/protos/DocumentV2$DocV2;
    .param p2    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p3    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    new-instance v0, Lcom/google/android/finsky/utils/PlayCardUtils$7;

    invoke-direct {v0, p2, p1, p3}, Lcom/google/android/finsky/utils/PlayCardUtils$7;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/protos/DocumentV2$DocV2;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FifeImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static configureActions(Lcom/google/android/play/layout/PlayPopupMenu;Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 18
    .param p0    # Lcom/google/android/play/layout/PlayPopupMenu;
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # Landroid/accounts/Account;
    .param p4    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v4

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v5

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v6

    sget-object v8, Lcom/google/android/finsky/utils/PlayCardUtils;->sDocumentActions:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    move-object/from16 v7, p2

    invoke-static/range {v2 .. v8}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getDocumentActions(Landroid/accounts/Account;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/4 v11, 0x0

    sget-object v6, Lcom/google/android/finsky/utils/PlayCardUtils;->sDocumentActions:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    invoke-virtual {v6}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->hasAction()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v13, 0x0

    :goto_0
    sget-object v6, Lcom/google/android/finsky/utils/PlayCardUtils;->sDocumentActions:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    iget v6, v6, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->actionCount:I

    if-ge v13, v6, :cond_1

    sget-object v6, Lcom/google/android/finsky/utils/PlayCardUtils;->sDocumentActions:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    invoke-virtual {v6, v13}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->getAction(I)Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->canCreateClickListener(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Can\'t make click listener for action %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v5, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;->actionType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/google/android/finsky/utils/PlayCardUtils;->sDocumentActions:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    iget v6, v6, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->backend:I

    sget-object v7, Lcom/google/android/finsky/utils/PlayCardUtils;->sActionStyle:Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    invoke-static {v5, v6, v7}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getActionStyleLong(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;)V

    sget-object v6, Lcom/google/android/finsky/utils/PlayCardUtils;->sDocumentActions:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    iget v6, v6, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->backend:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-static/range {v5 .. v10}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getActionClickListener(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentAction;ILcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v15

    sget-object v6, Lcom/google/android/finsky/utils/PlayCardUtils;->sActionStyle:Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->getString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v14

    const/4 v6, 0x1

    new-instance v7, Lcom/google/android/finsky/utils/PlayCardUtils$9;

    invoke-direct {v7, v15}, Lcom/google/android/finsky/utils/PlayCardUtils$9;-><init>(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6, v7}, Lcom/google/android/play/layout/PlayPopupMenu;->addMenuItem(Ljava/lang/CharSequence;ZLcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    if-nez v11, :cond_2

    sget-object v6, Lcom/google/android/finsky/utils/PlayCardUtils;->sDocumentActions:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    invoke-virtual {v6}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->hasStatus()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/google/android/finsky/utils/PlayCardUtils;->sDocumentActions:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    sget-object v7, Lcom/google/android/finsky/utils/PlayCardUtils;->sActionStyle:Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getActionStatus(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;)V

    sget-object v6, Lcom/google/android/finsky/utils/PlayCardUtils;->sActionStyle:Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->getString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v17

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/android/play/layout/PlayPopupMenu;->addMenuItem(Ljava/lang/CharSequence;ZLcom/google/android/play/layout/PlayPopupMenu$OnActionSelectedListener;)V

    :cond_2
    return-void
.end method

.method private static configureOverflowView(Lcom/google/android/play/layout/PlayCardViewBase;Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 9
    .param p0    # Lcom/google/android/play/layout/PlayCardViewBase;
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .param p4    # Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;
    .param p5    # Lcom/google/android/finsky/layout/play/PlayCardDismissListener;
    .param p6    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/google/android/finsky/utils/PlayCardUtils$8;

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/finsky/utils/PlayCardUtils$8;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/WishlistHelper$WishlistStatusListener;Lcom/google/android/finsky/layout/play/PlayCardDismissListener;Lcom/google/android/play/layout/PlayCardViewBase;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static convertCardTypeToUiElementType(I)I
    .locals 3
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown card type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x1fd

    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0x1ff

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x1fb

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x1fc

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x1f9

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x1fa

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x200

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x201

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x1f8

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x1fe

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x1f5

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x203

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x202

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static getDocDisplaySubtitle(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/google/android/finsky/api/model/Document;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static initializeCardTrackers()V
    .locals 3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/utils/PlayCardUtils$1;

    invoke-direct {v2}, Lcom/google/android/finsky/utils/PlayCardUtils$1;-><init>()V

    invoke-interface {v1, v2}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/utils/PlayCardUtils$2;

    invoke-direct {v2}, Lcom/google/android/finsky/utils/PlayCardUtils$2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    invoke-static {}, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->getInstance()Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/utils/PlayCardUtils$3;

    invoke-direct {v2}, Lcom/google/android/finsky/utils/PlayCardUtils$3;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker;->registerListener(Lcom/google/android/play/layout/PlayCardWindowLifecycleTracker$CardLifecycleListener;)V

    invoke-static {}, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;->getInstance()Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/finsky/utils/PlayCardUtils$4;

    invoke-direct {v2}, Lcom/google/android/finsky/utils/PlayCardUtils$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;->registerCardCustomizer(ILcom/google/android/finsky/utils/PlayCardCustomizer;)V

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/finsky/utils/PlayCardUtils$5;

    invoke-direct {v2}, Lcom/google/android/finsky/utils/PlayCardUtils$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;->registerCardCustomizer(ILcom/google/android/finsky/utils/PlayCardCustomizer;)V

    const/16 v1, 0xa

    new-instance v2, Lcom/google/android/finsky/utils/PlayCardUtils$6;

    invoke-direct {v2}, Lcom/google/android/finsky/utils/PlayCardUtils$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/utils/PlayCardCustomizerRepository;->registerCardCustomizer(ILcom/google/android/finsky/utils/PlayCardCustomizer;)V

    return-void
.end method

.method public static resetLoggingData(Lcom/google/android/play/layout/PlayCardViewBase;)V
    .locals 3
    .param p0    # Lcom/google/android/play/layout/PlayCardViewBase;

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getLoggingData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->reset()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;-><init>(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {p0, v1}, Lcom/google/android/play/layout/PlayCardViewBase;->setLoggingData(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static setLoggingDataIfNecessary(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 1
    .param p0    # Lcom/google/android/play/layout/PlayCardViewBase;
    .param p1    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {p0}, Lcom/google/android/play/layout/PlayCardViewBase;->getLoggingData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;->setParentNode(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/utils/PlayCardUtils$CardUiElementNode;-><init>(Lcom/google/android/play/layout/PlayCardViewBase;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/layout/PlayCardViewBase;->setLoggingData(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static updateContentDescription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayCardViewBase;)V
    .locals 12
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # Lcom/google/android/play/layout/PlayCardViewBase;

    const/4 v7, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v6

    :goto_0
    if-eqz p0, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    invoke-virtual {p1, v7}, Lcom/google/android/play/layout/PlayCardViewBase;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    move-object v6, v7

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/google/android/finsky/utils/PlayCardUtils;->getDocDisplaySubtitle(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/play/layout/PlayCardViewBase;->getPrice()Lcom/google/android/play/layout/PlayCardPriceView;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/play/layout/PlayCardViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/play/layout/PlayCardPriceView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2}, Lcom/google/android/play/layout/PlayCardPriceView;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Lcom/google/android/play/layout/PlayCardViewBase;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentDescriptionResource(I)I

    move-result v4

    if-lez v4, :cond_4

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v6, v7, v9

    aput-object v5, v7, v10

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentLongDescriptionResource(I)I

    move-result v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v9

    aput-object v5, v8, v10

    invoke-virtual {v2}, Lcom/google/android/play/layout/PlayCardPriceView;->getText()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v3, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private static declared-synchronized updatePriceLabel(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayCardViewBase;)V
    .locals 13
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # Lcom/google/android/play/layout/PlayCardViewBase;

    const/4 v11, 0x0

    const-class v12, Lcom/google/android/finsky/utils/PlayCardUtils;

    monitor-enter v12

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/play/layout/PlayCardViewBase;->getPrice()Lcom/google/android/play/layout/PlayCardPriceView;

    move-result-object v10

    if-eqz p0, :cond_0

    if-nez v10, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/PlayCardUtils;->updateContentDescription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayCardViewBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v12

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/play/layout/PlayCardViewBase;->getOwnershipRenderingType()I

    move-result v9

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v4

    sget-object v6, Lcom/google/android/finsky/utils/PlayCardUtils;->sDocumentActions:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getDocumentActions(Landroid/accounts/Account;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;)V

    sget-object v0, Lcom/google/android/finsky/utils/PlayCardUtils;->sDocumentActions:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    sget-object v1, Lcom/google/android/finsky/utils/PlayCardUtils;->sListingStyle:Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->getListingStyle(Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;)V

    sget-object v0, Lcom/google/android/finsky/utils/PlayCardUtils;->sDocumentActions:Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;

    iget-boolean v7, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$DocumentActions;->displayAsOwned:Z

    invoke-virtual {p1, v7}, Lcom/google/android/play/layout/PlayCardViewBase;->setItemOwned(Z)V

    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Lcom/google/android/play/layout/PlayCardPriceView;->setVisibility(I)V

    if-eqz v7, :cond_4

    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/google/android/play/layout/PlayCardPriceView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getOwnedItemIndicator(I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/google/android/play/layout/PlayCardPriceView;->setIcon(I)V

    :goto_1
    if-eqz v7, :cond_2

    and-int/lit8 v0, v9, 0x2

    if-eqz v0, :cond_3

    :cond_2
    const/4 v11, 0x1

    :cond_3
    if-eqz v11, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/google/android/play/layout/PlayCardPriceView;->setVisibility(I)V

    sget-object v0, Lcom/google/android/finsky/utils/PlayCardUtils;->sListingStyle:Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    iget-object v0, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerFullText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getExperiments()Lcom/google/android/finsky/experiments/FinskyExperiments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/experiments/FinskyExperiments;->isHideSalesPricesExperimentEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/android/finsky/utils/PlayCardUtils;->sListingStyle:Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    iget-object v0, v0, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerText:Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/utils/PlayCardUtils;->sListingStyle:Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    iget-object v1, v1, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->offerFullText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-virtual {v10, v0, v1, v2}, Lcom/google/android/play/layout/PlayCardPriceView;->setText(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_2
    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/PlayCardUtils;->updateContentDescription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayCardViewBase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    :cond_4
    :try_start_2
    invoke-virtual {v10}, Lcom/google/android/play/layout/PlayCardPriceView;->clearIcon()V

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/google/android/finsky/utils/PlayCardUtils;->sListingStyle:Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;

    invoke-virtual {v10}, Lcom/google/android/play/layout/PlayCardPriceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/utils/PurchaseButtonHelper$TextStyle;->getString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Lcom/google/android/play/layout/PlayCardPriceView;->setText(Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-virtual {v10, v0, v1}, Lcom/google/android/play/layout/PlayCardPriceView;->setText(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private static updateTrackedCardPrices()V
    .locals 4

    sget-object v3, Lcom/google/android/finsky/utils/PlayCardUtils;->sWindowAttachedCards:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    sget-object v3, Lcom/google/android/finsky/utils/PlayCardUtils;->sWindowAttachedCards:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/layout/PlayCardViewBase;

    invoke-virtual {v0}, Lcom/google/android/play/layout/PlayCardViewBase;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    invoke-static {v3, v0}, Lcom/google/android/finsky/utils/PlayCardUtils;->updatePriceLabel(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/play/layout/PlayCardViewBase;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
