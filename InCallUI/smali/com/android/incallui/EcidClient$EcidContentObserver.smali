.class Lcom/android/incallui/EcidClient$EcidContentObserver;
.super Landroid/database/ContentObserver;
.source "EcidClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/EcidClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EcidContentObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/EcidClient$EcidContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    # getter for: Lcom/android/incallui/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/incallui/EcidClient;->access$300()Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    # getter for: Lcom/android/incallui/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/incallui/EcidClient;->access$300()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/EcidClient;

    # getter for: Lcom/android/incallui/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/android/incallui/EcidClient;->access$000(Lcom/android/incallui/EcidClient;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Lcom/android/incallui/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/android/incallui/EcidClient;->access$000(Lcom/android/incallui/EcidClient;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v5, v1

    :goto_1
    if-eqz v5, :cond_0

    # ++operator for: Lcom/android/incallui/EcidClient;->m_lookupId:I
    invoke-static {}, Lcom/android/incallui/EcidClient;->access$404()I

    move-result v1

    iget-object v2, v0, Lcom/android/incallui/EcidClient;->m_phoneNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/incallui/EcidClient;->m_cname:Ljava/lang/String;

    iget v4, v0, Lcom/android/incallui/EcidClient;->m_nFlags:I

    # invokes: Lcom/android/incallui/EcidClient;->executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    invoke-static/range {v0 .. v5}, Lcom/android/incallui/EcidClient;->access$500(Lcom/android/incallui/EcidClient;ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
