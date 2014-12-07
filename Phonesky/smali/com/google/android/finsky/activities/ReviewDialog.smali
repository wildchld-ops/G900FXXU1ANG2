.class public Lcom/google/android/finsky/activities/ReviewDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ReviewDialog.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    }
.end annotation


# instance fields
.field private mAuthor:Lcom/google/android/finsky/api/model/Document;

.field private mAuthorName:Landroid/widget/TextView;

.field private mClickDebounce:Z

.field private mCommentView:Landroid/widget/TextView;

.field mEmptyTextWatcher:Landroid/text/TextWatcher;

.field private mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

.field private mImpressionId:J

.field private mProfilePic:Lcom/google/android/finsky/layout/FifeImageView;

.field private mRatingBar:Landroid/widget/RatingBar;

.field private mReviewBy:Landroid/widget/TextView;

.field private mReviewMode:I

.field private mTitleView:Landroid/widget/TextView;

.field private mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/google/android/finsky/activities/ReviewDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/ReviewDialog$1;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    const/16 v0, 0x4b3

    invoke-static {v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->obtainPlayStoreUiElement(I)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mClickDebounce:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->syncButtonEnabledState()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ReviewDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mClickDebounce:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/finsky/activities/ReviewDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mClickDebounce:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/ReviewDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->isEditingReview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/ReviewDialog;)Lcom/google/android/finsky/analytics/FinskyEventLog;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/ReviewDialog;)Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getListener()Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/ReviewDialog;)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/ReviewDialog;)Lcom/google/android/finsky/api/model/Document;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mAuthor:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method private getListener()Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUserComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserRating()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getUserTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isEditingReview()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "previous_author"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/protos/DocumentV2$Review;II[B)Lcom/google/android/finsky/activities/ReviewDialog;
    .locals 5

    new-instance v1, Lcom/google/android/finsky/activities/ReviewDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/ReviewDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "review_mode"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "doc_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "doc_title"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "author"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "backend"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "previous_rating"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    const-string v2, "previous_title"

    iget-object v3, p4, Lcom/google/android/finsky/protos/DocumentV2$Review;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "previous_comment"

    iget-object v3, p4, Lcom/google/android/finsky/protos/DocumentV2$Review;->comment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "previous_author"

    iget-object v3, p4, Lcom/google/android/finsky/protos/DocumentV2$Review;->author:Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    invoke-static {v3}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v2, "server_logs_cookie"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "impression_id"

    invoke-static {}, Lcom/google/android/finsky/analytics/FinskyEventLog;->getNextImpressionId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/ReviewDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private syncButtonEnabledState()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I

    move-result v7

    if-lez v7, :cond_2

    move v2, v5

    :goto_1
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget v7, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    if-nez v4, :cond_3

    if-nez v0, :cond_3

    move v2, v5

    :cond_1
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    move v2, v6

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v2, v5

    :goto_3
    goto :goto_2

    :cond_6
    move v2, v6

    goto :goto_3
.end method


# virtual methods
.method public childImpression(Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unwanted children"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParentNode()Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayStoreUiElement()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getListener()Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/activities/ReviewDialog$Listener;->onCancelReview()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const/16 v1, 0x4b7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logClickEvent(I[BLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 31

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    const-string v27, "review_mode"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewMode:I

    const-string v27, "doc_id"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v27, "doc_title"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v27, "backend"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v27, "previous_author"

    move-object/from16 v0, v27

    invoke-static {v6, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/protos/DocumentV2$DocV2;

    if-eqz v16, :cond_2

    new-instance v15, Lcom/google/android/finsky/api/model/Document;

    invoke-direct/range {v15 .. v16}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/protos/DocumentV2$DocV2;)V

    :goto_0
    const-string v27, "author"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/api/model/Document;

    if-eqz p1, :cond_3

    move-object/from16 v25, p1

    :goto_1
    const-string v27, "previous_rating"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    const-string v27, "previous_title"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v27, "previous_comment"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v10, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v27

    const v28, 0x7f0c0055

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v10, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f040120

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    const v27, 0x7f080208

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewStub;

    invoke-static {v8}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getRatingBarLayoutId(I)I

    move-result v27

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v27, 0x7f080209

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/RatingBar;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    const v27, 0x7f08020a

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    const v27, 0x7f08020b

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/EditText;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    const v27, 0x7f08020c

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/EditText;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0b0090

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RatingBar;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v27, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RatingBar;->setRating(F)V

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/google/android/finsky/utils/RateReviewHelper;->getRatingDescription(F)I

    move-result v27

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const v27, 0x7f0901df

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/ReviewDialog;->setCancelable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v27, "server_logs_cookie"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mUiElementProto:Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/android/finsky/analytics/FinskyEventLog;->setServerLogCookie(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;[B)Lcom/google/android/finsky/analytics/PlayStore$PlayStoreUiElement;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/activities/ReviewDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    const-string v27, "impression_id"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/finsky/activities/ReviewDialog;->mImpressionId:J

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mEventLogger:Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mImpressionId:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logPathImpression(JLcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/ReviewDialog;->isEditingReview()Z

    move-result v27

    if-eqz v27, :cond_5

    const v27, 0x7f0901c1

    :goto_3
    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v27, Lcom/google/android/finsky/activities/ReviewDialog$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/google/android/finsky/activities/ReviewDialog$2;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v14, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/activities/ReviewDialog;->isEditingReview()Z

    move-result v27

    if-eqz v27, :cond_1

    const v27, 0x7f0901c2

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    new-instance v28, Lcom/google/android/finsky/activities/ReviewDialog$3;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/google/android/finsky/activities/ReviewDialog$3;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mRatingBar:Landroid/widget/RatingBar;

    move-object/from16 v27, v0

    new-instance v28, Lcom/google/android/finsky/activities/ReviewDialog$4;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v13}, Lcom/google/android/finsky/activities/ReviewDialog$4;-><init>(Lcom/google/android/finsky/activities/ReviewDialog;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v28}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f040121

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v26

    const v27, 0x7f08020f

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewBy:Landroid/widget/TextView;

    const v27, 0x7f080210

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/activities/ReviewDialog;->mAuthorName:Landroid/widget/TextView;

    const v27, 0x7f08020e

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/activities/ReviewDialog;->mProfilePic:Lcom/google/android/finsky/layout/FifeImageView;

    invoke-static {v10, v8}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getSecondaryTextColor(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mAuthorName:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewBy:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewBy:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mReviewBy:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mAuthor:Lcom/google/android/finsky/api/model/Document;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mAuthorName:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mAuthor:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mProfilePic:Lcom/google/android/finsky/layout/FifeImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mAuthor:Lcom/google/android/finsky/api/model/Document;

    move-object/from16 v27, v0

    const/16 v29, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v27

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/android/finsky/protos/Doc$Image;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/FifeImageView;->setImage(Lcom/google/android/finsky/protos/Doc$Image;Lcom/google/android/finsky/utils/BitmapLoader;)V

    return-object v11

    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v25, v6

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_5
    const v27, 0x7f0901c0

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/finsky/activities/ReviewDialog;->mAuthor:Lcom/google/android/finsky/api/model/Document;

    goto :goto_4
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mCommentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog;->mEmptyTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "previous_rating"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "previous_title"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "previous_comment"

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialog;->syncButtonEnabledState()V

    return-void
.end method
