.class public Lcom/google/android/finsky/activities/ReviewDialogListener;
.super Ljava/lang/Object;
.source "ReviewDialogListener.java"

# interfaces
.implements Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/ReviewDialog$Listener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDoc:Lcom/google/android/finsky/api/model/Document;

.field private final mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

.field private final mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;Lcom/google/android/finsky/layout/RateReviewSection;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/support/v4/app/Fragment;
    .param p3    # Lcom/google/android/finsky/api/model/Document;
    .param p4    # Lcom/google/android/finsky/api/model/DfeDetails;
    .param p5    # Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
    .param p6    # Lcom/google/android/finsky/layout/RateReviewSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iput-object p5, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    iput-object p6, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewDialogListener;)V
    .locals 0
    .param p0    # Lcom/google/android/finsky/activities/ReviewDialogListener;

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->refreshUserReview()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
    .locals 1
    .param p0    # Lcom/google/android/finsky/activities/ReviewDialogListener;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    return-object v0
.end method

.method private refreshUserReview()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->invalidateCurrentReviewUrl()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->refresh()V

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mRateReviewSection:Lcom/google/android/finsky/layout/RateReviewSection;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/RateReviewSection;->refresh()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelReview()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/ReviewDialogListener;->refreshUserReview()V

    return-void
.end method

.method public onDeleteReview(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/finsky/activities/ReviewDialogListener$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/ReviewDialogListener$2;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/utils/RateReviewHelper;->deleteReview(Lcom/google/android/finsky/api/model/Document;Landroid/content/Context;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V

    return-void
.end method

.method public onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;

    new-instance v0, Lcom/google/android/finsky/api/model/DfeRateReview;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getRpcId()I

    move-result v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/finsky/api/model/DfeRateReview;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/google/android/finsky/activities/ReviewDialogListener$3;

    invoke-direct {v1, p0, p3}, Lcom/google/android/finsky/activities/ReviewDialogListener$3;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    new-instance v1, Lcom/google/android/finsky/activities/ReviewDialogListener$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewDialogListener$4;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/google/android/finsky/api/model/Document;

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v5, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/google/android/finsky/activities/ReviewDialogListener$1;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/activities/ReviewDialogListener$1;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;)V

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/utils/RateReviewHelper;->updateReview(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Landroid/content/Context;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V

    return-void
.end method

.method protected toast(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
