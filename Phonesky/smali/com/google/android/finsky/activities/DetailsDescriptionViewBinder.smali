.class public Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;
.super Lcom/google/android/finsky/activities/DetailsTextViewBinder;
.source "DetailsDescriptionViewBinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;-><init>()V

    return-void
.end method

.method private buildDescription(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Lcom/google/android/finsky/api/model/Document;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->getExtraSummary(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br><br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_0
.end method

.method private getExtraSummary(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;
    .locals 15
    .param p1    # Lcom/google/android/finsky/api/model/Document;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/protos/DocDetails$AppDetails;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v8, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasVersionString:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v9, 0x7f09015f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->versionString:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v8, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasUploadDate:Z

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_1

    const-string v8, "<br>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v9, 0x7f09024d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->uploadDate:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v8, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->hasInstallationSize:Z

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    const-string v8, "<br>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v9, 0x7f09024e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    iget-wide v13, v0, Lcom/google/android/finsky/protos/DocDetails$AppDetails;->installationSize:J

    invoke-static {v12, v13, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_5

    const-string v8, "<br>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getNormalizedContentRating()I

    move-result v3

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v9, 0x7f09015d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Lcom/google/android/finsky/activities/ContentFilterActivity;->getLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_6
    const/4 v8, 0x5

    if-ne v5, v8, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/protos/DocDetails$BookDetails;

    move-result-object v1

    iget-boolean v8, v1, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->hasIsbn:Z

    if-eqz v8, :cond_7

    iget-object v8, v1, Lcom/google/android/finsky/protos/DocDetails$BookDetails;->isbn:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    goto :goto_0

    :cond_8
    const/16 v8, 0x10

    if-eq v5, v8, :cond_9

    const/16 v8, 0x18

    if-ne v5, v8, :cond_b

    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/utils/DocUtils;->getMagazineCurrentIssueDocument(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getMagazineDetails()Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-boolean v8, v6, Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;->hasDeviceAvailabilityDescriptionHtml:Z

    if-eqz v8, :cond_a

    iget-object v8, v6, Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;->deviceAvailabilityDescriptionHtml:Ljava/lang/String;

    goto :goto_0

    :cond_a
    const/4 v8, 0x0

    goto :goto_0

    :cond_b
    const/16 v8, 0x11

    if-eq v5, v8, :cond_c

    const/16 v8, 0x19

    if-ne v5, v8, :cond_e

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getMagazineDetails()Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;

    move-result-object v6

    iget-boolean v8, v6, Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;->hasDeviceAvailabilityDescriptionHtml:Z

    if-eqz v8, :cond_d

    iget-object v8, v6, Lcom/google/android/finsky/protos/DocDetails$MagazineDetails;->deviceAvailabilityDescriptionHtml:Ljava/lang/String;

    goto :goto_0

    :cond_d
    const/4 v8, 0x0

    goto :goto_0

    :cond_e
    const/4 v8, 0x6

    if-ne v5, v8, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/protos/DocDetails$VideoDetails;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v7, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_f

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v9, 0x7f09024f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, ","

    iget-object v13, v7, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->audioLanguage:[Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-object v8, v7, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    array-length v8, v8

    if-lez v8, :cond_11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_10

    const-string v8, "<br>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->mContext:Landroid/content/Context;

    const v9, 0x7f090250

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, ","

    iget-object v13, v7, Lcom/google/android/finsky/protos/DocDetails$VideoDetails;->captionLanguage:[Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/google/android/finsky/api/model/Document;
    .param p3    # Landroid/os/Bundle;
    .param p4    # Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getDescriptionHeaderStringId(I)I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getRawDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->buildDescription(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getRawTranslatedDescription()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-super/range {v0 .. v7}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Bundle;Lcom/google/android/finsky/layout/play/PlayStoreUiElementNode;)V

    return-void

    :cond_0
    invoke-direct {p0, p2, v8}, Lcom/google/android/finsky/activities/DetailsDescriptionViewBinder;->buildDescription(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0
.end method
