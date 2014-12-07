.class Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;
.super Ljava/lang/Object;
.source "RecentSuggestionsProvider.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->makeRequest(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

.field final synthetic val$rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    iput-object p2, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->val$rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->onResponse(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONArray;)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->sendSuggestionsReceivedLog()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v0, "s"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "t"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "p"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "t"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "a"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "p"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    iget-object v5, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->val$rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;

    # invokes: Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->getIconUri(Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)Landroid/net/Uri;
    invoke-static {v0, v9, v8, v5}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->access$100(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;Lorg/json/JSONObject;Ljava/lang/String;Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    # getter for: Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mDescription:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->access$200(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    # getter for: Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mDescription:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->access$200(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "d"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "d"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    const-string v5, "com.google.android.finsky.NAVIGATIONAL_SUGGESTION"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://market.android.com/details?id="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "&feature=sugg"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->addRow(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    # getter for: Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->mAppsOnly:Z
    invoke-static {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->access$300(Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->this$0:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;

    const v5, 0x108004f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5, v3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor;->addRow(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->val$rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->onComplete()V

    :goto_2
    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$2;->val$rListener:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$SearchSuggestor$RefCountedOnCompleteListener;->onComplete()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
