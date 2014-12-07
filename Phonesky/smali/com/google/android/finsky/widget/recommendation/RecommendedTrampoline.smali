.class public Lcom/google/android/finsky/widget/recommendation/RecommendedTrampoline;
.super Lcom/google/android/finsky/widget/WidgetTrampolineActivity;
.source "RecommendedTrampoline.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/widget/WidgetTrampolineActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected enableMultiCorpus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getCorpusName(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const v0, 0x7f0902e6

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/widget/recommendation/RecommendedTrampoline;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/finsky/widget/WidgetTrampolineActivity;->getCorpusName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDialogTitle()I
    .locals 1

    const v0, 0x7f0902db

    return v0
.end method

.method protected getWidgetClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/finsky/widget/BaseWidgetProvider;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/finsky/widget/recommendation/RecommendedWidgetProvider;

    return-object v0
.end method
