.class public Lcom/google/android/finsky/layout/DetailsSummaryByline;
.super Lcom/google/android/finsky/layout/AccessibleLinearLayout;
.source "DetailsSummaryByline.java"


# static fields
.field private static final NUMBER_FORMATTER:Ljava/text/NumberFormat;

.field private static final RATING_FORMATTER:Ljava/text/DecimalFormat;


# instance fields
.field private mFirstRow:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSecondRow:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->NUMBER_FORMATTER:Ljava/text/NumberFormat;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->RATING_FORMATTER:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private configureContentDescription(Lcom/google/android/finsky/api/model/Document;Z)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v9

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v12

    if-eqz v12, :cond_2

    sget-object v12, Lcom/google/android/finsky/layout/DetailsSummaryByline;->RATING_FORMATTER:Ljava/text/DecimalFormat;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v13

    float-to-double v13, v13

    invoke-virtual {v12, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v12, v3, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->numDownloads:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v6, "0"

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-wide v13, v3, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->installationSize:J

    invoke-static {v12, v13, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    if-nez p2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f09025f

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v15, 0x2

    aput-object v6, v14, v15

    const/4 v15, 0x3

    iget-object v0, v3, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->uploadDate:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x4

    aput-object v7, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    const-wide/16 v9, 0x0

    goto :goto_0

    :cond_2
    const-string v4, "0"

    goto :goto_1

    :cond_3
    iget-object v6, v3, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->numDownloads:Ljava/lang/String;

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090260

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v15, 0x2

    aput-object v6, v14, v15

    const/4 v15, 0x3

    aput-object v7, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v12, v5, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->publicationDate:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, v5, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->publisher:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-boolean v12, v5, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->hasNumberOfPages:Z

    if-eqz v12, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090261

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v15, 0x2

    iget-object v0, v5, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->publisher:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget-object v0, v5, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->publicationDate:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/finsky/utils/DateUtils;->formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    iget v0, v5, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->numberOfPages:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v12

    goto/16 :goto_3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    move-result-object v11

    if-eqz v11, :cond_8

    iget-object v12, v11, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->releaseDate:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, v11, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->duration:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f090262

    const/4 v12, 0x5

    new-array v15, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v12

    const/4 v12, 0x1

    aput-object v4, v15, v12

    const/16 v16, 0x2

    iget-object v12, v11, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->contentRating:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    iget-object v12, v11, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->contentRating:Ljava/lang/String;

    :goto_4
    aput-object v12, v15, v16

    const/4 v12, 0x3

    iget-object v0, v11, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->releaseDate:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, v12

    const/4 v12, 0x4

    iget-object v0, v11, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->duration:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v17, 0x7f090163

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;->details:Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    if-eqz v2, :cond_0

    iget-object v12, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->originalReleaseDate:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->label:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    array-length v12, v12

    if-lez v12, :cond_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090263

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->label:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->originalReleaseDate:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/finsky/utils/DateUtils;->formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, ", "

    iget-object v0, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v12

    goto/16 :goto_3

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getMagazineDetails()Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090264

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v15, 0x2

    iget-object v0, v8, Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;->deliveryFrequencyDescription:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget-object v0, v8, Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;->psvDescription:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private configureItemTextInfo(Lcom/google/android/finsky/api/model/Document;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureContentDescription(Lcom/google/android/finsky/api/model/Document;Z)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->isIABSupported(Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureAppDetailsByline(Lcom/google/android/finsky/api/model/Document;Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureBookDetailsByline(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureMovieDetailsByline(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureAlbumDetailsByline(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureMagazineDetailsByline(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private configureRating(Lcom/google/android/finsky/api/model/Document;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040053

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0800fc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    const v3, 0x7f0800fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {v0, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RatingBar;->setRating(F)V

    sget-object v3, Lcom/google/android/finsky/layout/DetailsSummaryByline;->NUMBER_FORMATTER:Ljava/text/NumberFormat;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {v0, v8}, Landroid/widget/RatingBar;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private isIABSupported(Lcom/google/android/finsky/api/model/Document;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->declaresIab:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected configureAlbumDetailsByline(Lcom/google/android/finsky/api/model/Document;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/google/android/finsky/protos/DocDetails$AlbumDetails;->details:Lcom/google/android/finsky/protos/DocDetails$MusicDetails;

    const/4 v9, 0x0

    iget-object v12, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->originalReleaseDate:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    :try_start_0
    iget-object v12, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->originalReleaseDate:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/finsky/utils/DateUtils;->formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040055

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    :cond_0
    :goto_0
    iget-object v12, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->label:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseDate:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseDate:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x4

    if-lt v12, v13, :cond_4

    iget-object v12, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->releaseDate:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0902de

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const/4 v15, 0x1

    iget-object v0, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->label:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040055

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v12, 0x15

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v9, 0x1

    :cond_1
    iget-object v12, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    array-length v12, v12

    if-lez v12, :cond_2

    const-string v12, ", "

    iget-object v13, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->genre:[Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040055

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v9, 0x1

    :cond_2
    if-nez v9, :cond_3

    const/16 v12, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setVisibility(I)V

    :cond_3
    return-void

    :catch_0
    move-exception v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot parse ISO 8601 date "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0902dd

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v2, Lcom/google/android/finsky/protos/DocDetails$MusicDetails;->label:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method protected configureAppDetailsByline(Lcom/google/android/finsky/api/model/Document;Z)V
    .locals 14

    const-string v8, ""

    const-string v6, ""

    const-wide/16 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09036d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    :goto_0
    iget-object v9, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->numDownloads:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090160

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->numDownloads:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    iget-boolean v9, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasInstallationSize:Z

    if-eqz v9, :cond_2

    iget-wide v3, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->installationSize:J

    :cond_2
    iget-object v9, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040055

    iget-object v11, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0x15

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040055

    iget-object v11, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040055

    iget-object v11, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-gtz v9, :cond_4

    const-string v7, ""

    :goto_1
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v9, 0x15

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    iget-object v9, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->uploadDate:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v8, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->uploadDate:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method protected configureBookDetailsByline(Lcom/google/android/finsky/api/model/Document;)V
    .locals 10

    const/16 v8, 0x15

    const v7, 0x7f040055

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->publisher:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->publisher:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-boolean v5, v0, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->hasNumberOfPages:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090161

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v0, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->numberOfPages:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v5, v0, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->publicationDate:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040055

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v5, 0x15

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, v0, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->publicationDate:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/finsky/utils/DateUtils;->formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse ISO 8601 date "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected configureMagazineDetailsByline(Lcom/google/android/finsky/api/model/Document;)V
    .locals 7

    const v6, 0x7f040055

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getMagazineDetails()Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;->deliveryFrequencyDescription:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;->deliveryFrequencyDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x15

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v3, v1, Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;->psvDescription:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;->psvDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected configureMovieDetailsByline(Lcom/google/android/finsky/api/model/Document;)V
    .locals 12

    const/16 v11, 0x15

    const v10, 0x7f040055

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->contentRating:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090162

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, v4, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->contentRating:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v5, v4, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->releaseDate:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, v4, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->releaseDate:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v5, v4, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->duration:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, v4, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->duration:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090163

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setDocument(Lcom/google/android/finsky/api/model/Document;)V
    .locals 3

    const v2, 0x7f040054

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->removeAllViews()V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureRating(Lcom/google/android/finsky/api/model/Document;)V

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureItemTextInfo(Lcom/google/android/finsky/api/model/Document;)V

    return-void
.end method
