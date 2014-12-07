.class public Lcom/google/android/finsky/layout/ReviewItemLayout;
.super Landroid/widget/RelativeLayout;
.source "ReviewItemLayout.java"


# instance fields
.field private mActionContainer:Landroid/view/View;

.field private mActionImage:Landroid/widget/ImageView;

.field private mActionSeparator:Landroid/view/View;

.field private mActionText:Landroid/widget/TextView;

.field private mAuthor:Landroid/widget/TextView;

.field private mBody:Landroid/widget/TextView;

.field private mCanRateReview:Z

.field private mHeader:Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;

.field private mIsYourReview:Z

.field private mMetadata:Landroid/widget/TextView;

.field private mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

.field private mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

.field private mYourReviewLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getReviewExtraInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocumentV2$Review;)Ljava/lang/String;
    .locals 12

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    move-object v2, v9

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v6, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->documentVersion:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->deviceName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    move v4, v7

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    move v3, v7

    :goto_2
    if-nez v4, :cond_4

    if-nez v3, :cond_0

    move-object v2, v9

    goto :goto_0

    :cond_2
    move v4, v8

    goto :goto_1

    :cond_3
    move v3, v8

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    iget-boolean v10, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionString:Z

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionString:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v5, v7

    :goto_3
    if-eqz v5, :cond_6

    if-nez v3, :cond_0

    move-object v2, v9

    goto :goto_0

    :cond_5
    move v5, v8

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v3, :cond_7

    const v9, 0x7f0901bc

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v1, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_4
    move-object v2, v7

    goto :goto_0

    :cond_7
    const v7, 0x7f0901bd

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f080218

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mAuthor:Landroid/widget/TextView;

    const v0, 0x7f08021a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mHeader:Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;

    const v0, 0x7f080221

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mBody:Landroid/widget/TextView;

    const v0, 0x7f080220

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mMetadata:Landroid/widget/TextView;

    const v0, 0x7f08020e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/FifeImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    const v0, 0x7f080213

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionContainer:Landroid/view/View;

    const v0, 0x7f080214

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionImage:Landroid/widget/ImageView;

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionText:Landroid/widget/TextView;

    const v0, 0x7f080216

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionSeparator:Landroid/view/View;

    const v0, 0x7f080219

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mYourReviewLabel:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionSeparator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionSeparator:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionSeparator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionSeparator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionSeparator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public setActionClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setReviewInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocumentV2$Review;Lcom/google/android/finsky/navigationmanager/NavigationManager;ZLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 13

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mIsYourReview:Z

    iget-boolean v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mIsYourReview:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mCanRateReview:Z

    iget-boolean v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mIsYourReview:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v9

    invoke-static {v9}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getReviewEditDrawable(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionText:Landroid/widget/TextView;

    const v9, 0x7f09036b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ReviewItemLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPrimaryColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mYourReviewLabel:Landroid/widget/TextView;

    const v9, 0x7f090371

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mYourReviewLabel:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v8, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    iget-object v1, v8, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mAuthor:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mAuthor:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mHeader:Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;

    invoke-virtual {v8, p2}, Lcom/google/android/finsky/layout/ReviewItemHeaderLayout;->setReviewInfo(Lcom/google/android/finsky/protos/DocumentV2$Review;)V

    iget-object v8, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_0
    const v8, 0x7f09036c

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mBody:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mBody:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/ReviewItemLayout;->getReviewExtraInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocumentV2$Review;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mMetadata:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mMetadata:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v5, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v5, :cond_8

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    const/4 v9, 0x4

    invoke-static {v5, v9}, Lcom/google/android/finsky/utils/DocV2Utils;->getFirstImageOfType(Lcom/google/android/finsky/protos/DocumentV2$DocV2;I)Lcom/google/android/finsky/protos/Doc$Image;

    move-result-object v9

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    :goto_5
    if-eqz v5, :cond_9

    iget-boolean v8, v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->hasDetailsUrl:Z

    if-eqz v8, :cond_9

    new-instance v4, Lcom/google/android/finsky/layout/play/GenericUiElementNode;

    const/16 v8, 0x117

    iget-object v9, v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->serverLogsCookie:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mParentNode:Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-direct {v4, v8, v9, v10, v11}, Lcom/google/android/finsky/layout/play/GenericUiElementNode;-><init>(I[BLcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElementInfo;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    new-instance v9, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v9, v5}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getClickListener(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)Landroid/view/View$OnClickListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/FifeImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    const v9, 0x7f09036f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v5, Lcom/google/android/finsky/protos/DocumentV2$DocV2;->title:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/FifeImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/FifeImageView;->setFocusable(Z)V

    :goto_6
    return-void

    :cond_1
    iget-object v8, p2, Lcom/google/android/finsky/protos/DocumentV2$Review;->commentId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionImage:Landroid/widget/ImageView;

    const v9, 0x7f0200e6

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mCanRateReview:Z

    if-eqz v8, :cond_4

    const/4 v6, 0x0

    :goto_7
    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionContainer:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionText:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionSeparator:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mYourReviewLabel:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mActionContainer:Landroid/view/View;

    const v9, 0x7f0901ee

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    const/16 v6, 0x8

    goto :goto_7

    :cond_5
    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mAuthor:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mBody:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_7
    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mMetadata:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/FifeImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_9
    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/FifeImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/FifeImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/ReviewItemLayout;->mProfilePicture:Lcom/google/android/finsky/layout/FifeImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/layout/FifeImageView;->setFocusable(Z)V

    goto :goto_6
.end method
