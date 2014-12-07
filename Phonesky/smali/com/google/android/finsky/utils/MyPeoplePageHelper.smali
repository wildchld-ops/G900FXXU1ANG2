.class public Lcom/google/android/finsky/utils/MyPeoplePageHelper;
.super Ljava/lang/Object;
.source "MyPeoplePageHelper.java"


# static fields
.field private static sListUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMyPeoplePageDirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/utils/MyPeoplePageHelper;->sListUrls:Ljava/util/List;

    return-void
.end method

.method public static invalidateMyPeoplePageListCache(Lcom/google/android/finsky/api/DfeApi;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v4, Lcom/google/android/finsky/utils/MyPeoplePageHelper;->sMyPeoplePageDirty:Z

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    sget-object v4, Lcom/google/android/finsky/utils/MyPeoplePageHelper;->sListUrls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1, v3}, Lcom/google/android/finsky/api/DfeApi;->invalidateListCache(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/google/android/finsky/utils/MyPeoplePageHelper;->sListUrls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    sput-boolean v2, Lcom/google/android/finsky/utils/MyPeoplePageHelper;->sMyPeoplePageDirty:Z

    move v2, v3

    goto :goto_0
.end method

.method public static setMyPeoplePageDirty()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/finsky/utils/MyPeoplePageHelper;->sMyPeoplePageDirty:Z

    return-void
.end method

.method public static setPeoplePageListUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/google/android/finsky/utils/MyPeoplePageHelper;->sListUrls:Ljava/util/List;

    return-void
.end method
