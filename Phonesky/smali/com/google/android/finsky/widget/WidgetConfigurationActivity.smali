.class public Lcom/google/android/finsky/widget/WidgetConfigurationActivity;
.super Landroid/app/Activity;
.source "WidgetConfigurationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/WidgetConfigurationActivity$Holder;,
        Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getCorpusName(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v12, 0x7f040142

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->setContentView(I)V

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v12, "dialog_title"

    const v13, 0x7f09010e

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->setTitle(I)V

    const v12, 0x7f0801b0

    invoke-virtual {p0, v12}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    const-string v12, "dfeToc"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v11}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v6

    const-string v12, "enableMultiCorpus"

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;-><init>()V

    const/4 v12, 0x0

    iput v12, v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->backend:I

    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->hasBackend:Z

    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->getCorpusName(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->name:Ljava/lang/String;

    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->hasName:Z

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "backend_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->backend:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1

    iget v12, v4, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->backend:I

    invoke-direct {p0, v12}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity;->getCorpusName(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    iput-object v10, v4, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->name:Ljava/lang/String;

    const/4 v12, 0x1

    iput-boolean v12, v4, Lcom/google/android/finsky/protos/Toc$CorpusMetadata;->hasName:Z

    :cond_2
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x3

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/GridView;->setNumColumns(I)V

    const-string v12, "appWidgetId"

    const/4 v13, -0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v0, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;

    invoke-direct {v0, p0, v6, v2}, Lcom/google/android/finsky/widget/WidgetConfigurationActivity$CorpusAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;I)V

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
