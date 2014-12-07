.class abstract Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
.super Ljava/lang/Object;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AsyncSuggestionAuthority"
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mEncodedReport:Ljava/lang/String;

.field protected final mQuery:Ljava/lang/String;

.field private final mResults:Landroid/database/MatrixCursor;

.field private mStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mResults:Landroid/database/MatrixCursor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mEncodedReport:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mQuery:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected addRow(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.SEARCH"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->addRow(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected addRow(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;

    sget-object v1, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mEncodedReport:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mResults:Landroid/database/MatrixCursor;

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-void
.end method

.method public gatherSuggestions()Landroid/database/Cursor;
    .locals 3

    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v2, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority$1;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mResults:Landroid/database/MatrixCursor;

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mResults:Landroid/database/MatrixCursor;

    goto :goto_0
.end method

.method protected getCarrierCountry()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method protected getCountry()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
.end method

.method protected sendSuggestionsReceivedLog()V
    .locals 10

    const/4 v9, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mStartTimeMs:J

    sub-long v1, v5, v7

    new-instance v3, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    invoke-direct {v3}, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;-><init>()V

    iget-object v5, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mQuery:Ljava/lang/String;

    iput-object v5, v3, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->query:Ljava/lang/String;

    iput-boolean v9, v3, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasQuery:Z

    iput-wide v1, v3, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->clientLatencyMs:J

    iput-boolean v9, v3, Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;->hasClientLatencyMs:Z

    invoke-static {}, Lcom/google/android/finsky/analytics/EventProtoCache;->getInstance()Lcom/google/android/finsky/analytics/EventProtoCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/analytics/EventProtoCache;->obtainPlayStoreBackgroundActionEvent()Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;

    move-result-object v0

    const/16 v5, 0x1fe

    iput v5, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->type:I

    iput-boolean v9, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->hasType:Z

    iput-object v3, v0, Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;->searchSuggestionReport:Lcom/google/android/finsky/analytics/PlayStore$SearchSuggestionReport;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logBackgroundEvent(Lcom/google/android/finsky/analytics/PlayStore$PlayStoreBackgroundActionEvent;)V

    invoke-static {v3}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mEncodedReport:Ljava/lang/String;

    return-void
.end method

.method protected startRequestLatencyTimer()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->mStartTimeMs:J

    return-void
.end method
