.class public Loauth/signpost/http/HttpParameters;
.super Ljava/lang/Object;
.source "HttpParameters.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/SortedSet",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private wrappedMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    iget-object v0, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;

    iget-object v2, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-virtual {p0, p1}, Loauth/signpost/http/HttpParameters;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public getAsHeaderElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Loauth/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAsQueryString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v3, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getFirst(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Loauth/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/Object;
    .param p2    # Z

    iget-object v2, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-static {v0}, Loauth/signpost/OAuth;->percentDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/SortedSet;

    invoke-virtual {p0, p1, p2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    iget-object v1, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iget-object v1, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    if-eqz p3, :cond_0

    invoke-static {p1}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    invoke-static {p2}, Loauth/signpost/OAuth;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p2
.end method

.method public put(Ljava/lang/String;Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/SortedSet;Z)Ljava/util/SortedSet;
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p3    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Loauth/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;

    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Loauth/signpost/http/HttpParameters;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    iget-object v2, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/SortedSet;

    goto :goto_1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public putAll(Ljava/util/Map;Z)V
    .locals 4
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/SortedSet;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/util/SortedSet;Z)Ljava/util/SortedSet;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public putAll([Ljava/lang/String;Z)V
    .locals 3
    .param p1    # [Ljava/lang/String;
    .param p2    # Z

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {p0, v1, v2, p2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Loauth/signpost/http/HttpParameters;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p0, v1, v2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/util/SortedSet;)Ljava/util/SortedSet;

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public putNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Loauth/signpost/http/HttpParameters;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;

    invoke-virtual {p0, p1}, Loauth/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public size()I
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Loauth/signpost/http/HttpParameters;->wrappedMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
