.class public Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;
.super Ljava/lang/Object;
.source "ReflectionDcbDetailExtractor.java"

# interfaces
.implements Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;


# instance fields
.field private mCachedDetails:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final mObject:Ljava/lang/Object;

.field private final mRootName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mCachedDetails:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mRootName:Ljava/lang/String;

    return-void
.end method

.method private static buildDetails(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->buildDetailsHelper(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private static buildDetailsHelper(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_1

    new-instance v20, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->isArray(Ljava/lang/Object;)Z

    move-result v8

    invoke-static/range {p0 .. p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->isIterable(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-nez v20, :cond_2

    const-class v20, Ljava/lang/Number;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_2

    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_3

    :cond_2
    new-instance v20, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v9, :cond_4

    if-eqz v8, :cond_6

    :cond_4
    if-eqz v8, :cond_5

    check-cast p0, [Ljava/lang/Object;

    move-object/from16 v15, p0

    check-cast v15, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    :goto_1
    const/16 v19, 0x0

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v10, v14, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->buildDetailsHelper(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v11, p0

    check-cast v11, Ljava/lang/Iterable;

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v12, v3

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v12, :cond_9

    aget-object v13, v3, v7

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "get"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v20

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_7

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_7

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->methodNameToTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    :try_start_0
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v16

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v14, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->buildDetailsHelper(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catch_0
    move-exception v6

    const-string v20, "Shouldn\'t happen with no-arg methods"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v6, v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catch_1
    move-exception v6

    const-string v20, "Shouldn\'t happen with public methods"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v6, v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catch_2
    move-exception v6

    const-string v4, "unknown"

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v20

    if-eqz v20, :cond_8

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_8
    const-string v20, "%s throw exception (%s): %s"

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v4, v21, v22

    const/16 v22, 0x2

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_a

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_a
    new-instance v20, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method static isArray(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    goto :goto_0
.end method

.method static isIterable(Ljava/lang/Object;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method private static methodNameToTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v1, "get"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getDetails()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mCachedDetails:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mObject:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mRootName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->buildDetails(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mCachedDetails:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mCachedDetails:Ljava/util/Collection;

    return-object v0
.end method
