.class public Lcom/google/android/finsky/utils/RateReviewHelper;
.super Ljava/lang/Object;
.source "RateReviewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;,
        Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DESCRIPTION_MAP:[I

.field private static final DESCRIPTION_MAP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/utils/RateReviewHelper;->DESCRIPTION_MAP:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/finsky/utils/RateReviewHelper;->ACCESSIBILITY_DESCRIPTION_MAP:[I

    return-void

    :array_0
    .array-data 4
        0x7f0901e2
        0x7f0901e3
        0x7f0901e4
        0x7f0901e5
        0x7f0901e6
        0x7f0901e7
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x7f0901e8
        0x7f0901e9
        0x7f0901ea
        0x7f0901eb
        0x7f0901ec
    .end array-data
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/finsky/utils/RateReviewHelper;->showReviewError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/finsky/utils/RateReviewHelper;->showReviewDeleteError(Landroid/content/Context;)V

    return-void
.end method

.method public static checkAndConfirmGPlus(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;)V
    .locals 4
    .param p0    # Landroid/support/v4/app/FragmentActivity;
    .param p1    # Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/utils/RateReviewHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/utils/RateReviewHelper$1;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;)V

    new-instance v2, Lcom/google/android/finsky/utils/RateReviewHelper$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/utils/RateReviewHelper$2;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;)V

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->getPlusProfile(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;

    return-void
.end method

.method public static deleteReview(Lcom/google/android/finsky/api/model/Document;Landroid/content/Context;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V
    .locals 4
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/utils/RateReviewHelper$5;

    invoke-direct {v2, p0, p2}, Lcom/google/android/finsky/utils/RateReviewHelper$5;-><init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V

    new-instance v3, Lcom/google/android/finsky/utils/RateReviewHelper$6;

    invoke-direct {v3, p1, p2}, Lcom/google/android/finsky/utils/RateReviewHelper$6;-><init>(Landroid/content/Context;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->deleteReview(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method

.method public static getRatingAccessibilityDescription(F)I
    .locals 2
    .param p0    # F

    sget-object v0, Lcom/google/android/finsky/utils/RateReviewHelper;->ACCESSIBILITY_DESCRIPTION_MAP:[I

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getRatingDescription(F)I
    .locals 2
    .param p0    # F

    sget-object v0, Lcom/google/android/finsky/utils/RateReviewHelper;->DESCRIPTION_MAP:[I

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static rateDocument(Lcom/google/android/finsky/api/model/Document;ILandroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V
    .locals 1
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # I
    .param p2    # Landroid/support/v4/app/FragmentActivity;
    .param p3    # Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    new-instance v0, Lcom/google/android/finsky/utils/RateReviewHelper$7;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/google/android/finsky/utils/RateReviewHelper$7;-><init>(Lcom/google/android/finsky/api/model/Document;ILcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {p2, v0}, Lcom/google/android/finsky/utils/RateReviewHelper;->checkAndConfirmGPlus(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/finsky/utils/RateReviewHelper$CheckAndConfirmGPlusListener;)V

    return-void
.end method

.method private static showReviewDeleteError(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;

    if-eqz p0, :cond_0

    const v0, 0x7f0901de

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private static showReviewError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static updateReview(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;Landroid/content/Context;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V
    .locals 13
    .param p0    # Lcom/google/android/finsky/api/model/Document;
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Lcom/google/android/finsky/api/model/Document;
    .param p5    # Landroid/content/Context;
    .param p6    # Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/FinskyApp;->getClientMutationCache(Ljava/lang/String;)Lcom/google/android/finsky/utils/ClientMutationCache;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/finsky/utils/ClientMutationCache;->updateCachedReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v10

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x1

    new-instance v3, Lcom/google/android/finsky/utils/RateReviewHelper$3;

    move-object v4, p0

    move-object/from16 v5, p6

    move v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/android/finsky/utils/RateReviewHelper$3;-><init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/google/android/finsky/utils/RateReviewHelper$4;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v11, v2, p0, v0, v1}, Lcom/google/android/finsky/utils/RateReviewHelper$4;-><init>(Lcom/google/android/finsky/utils/ClientMutationCache;Lcom/google/android/finsky/api/model/Document;Landroid/content/Context;Lcom/google/android/finsky/utils/RateReviewHelper$RateReviewListener;)V

    move-object v4, v10

    move-object v5, v12

    move-object v6, p2

    move-object/from16 v7, p3

    move v8, p1

    move-object v10, v3

    invoke-interface/range {v4 .. v11}, Lcom/google/android/finsky/api/DfeApi;->addReview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    return-void
.end method
