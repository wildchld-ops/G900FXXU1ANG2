.class public Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;,
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;,
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;,
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;,
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;
    }
.end annotation


# static fields
.field private static mIsGoogleTV:Ljava/lang/Boolean;

.field private static sCurrentBackendId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->mIsGoogleTV:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    const-string v0, "com.google.android.finsky.RecentSuggestionsProvider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->mIsGoogleTV:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0    # Ljava/lang/Boolean;

    sput-object p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->mIsGoogleTV:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static sendSuggestionClickedLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v5, 0xa

    :try_start_0
    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->parseFrom([B)Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    move-result-object v3

    iput-object p1, v3, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->suggestedQuery:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasSuggestedQuery:Z

    invoke-static {}, Lcom/google/android/finsky/analytics/EventProtoCache;->getInstance()Lcom/google/android/finsky/analytics/EventProtoCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    const/16 v5, 0x1ff

    iput v5, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    iput-object v3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->searchSuggestionReport:Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v5, "Couldn\'t decode bytes from suggestion"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v5, "Couldn\'t reconstitute proto from suggestion"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setCurrentBackendId(I)V
    .locals 0
    .param p0    # I

    sput p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->sCurrentBackendId:I

    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1    # Landroid/net/Uri;
    .param p2    # [Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # [Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz p4, :cond_0

    array-length v3, p4

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SelectionArgs must be provided for the Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    aget-object v3, p4, v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;

    invoke-super/range {p0 .. p5}, Landroid/content/SearchRecentSuggestionsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;-><init>(Ljava/lang/String;Landroid/database/Cursor;Landroid/content/Context;)V

    sget v3, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->sCurrentBackendId:I

    packed-switch v3, :pswitch_data_0

    new-instance v1, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->sCurrentBackendId:I

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    new-instance v3, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->gatherSuggestions()Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->gatherSuggestions()Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v3

    :pswitch_0
    new-instance v1, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;

    sget v3, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->sCurrentBackendId:I

    invoke-virtual {p0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$ThirdPartySearchSuggestor;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
