.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;
.super Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HistorySearchSuggestor"
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/database/Cursor;
    .param p3    # Landroid/content/Context;

    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method protected makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
    .locals 10
    .param p1    # Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, v0, v3

    const-string v8, "_id"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v8, "suggest_text_1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v7, v1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_2
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mQuery:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const v9, 0x108004a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v8, v9, v6}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->addRow(ILjava/lang/Object;Ljava/lang/String;)V

    :cond_3
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-interface {p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;->onComplete()V

    return-void
.end method
