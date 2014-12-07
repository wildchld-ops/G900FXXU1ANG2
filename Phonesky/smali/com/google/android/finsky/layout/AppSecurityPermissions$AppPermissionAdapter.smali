.class Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPermissionAdapter"
.end annotation


# instance fields
.field private final mDangerousList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mDangerousMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIsAppInstalled:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mNewDangerousPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewNormalPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNormalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTotalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewDangerousPermissions:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewNormalPermissions:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    # getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$200(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    # getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$200(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mIsAppInstalled:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->loadLocalAssetPermissions(Landroid/content/pm/PackageInfo;)Ljava/util/Set;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PermissionInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v14

    if-nez v14, :cond_2

    sget-boolean v14, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v14, :cond_0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permission:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not displayable"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :try_start_0
    # getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_2
    if-nez v6, :cond_4

    # getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$200(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0901fe

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    # getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    # getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    new-instance v13, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v9, v3}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Ljava/lang/String;Ljava/lang/String;)V

    iget v14, v12, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    invoke-interface {v14, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    new-instance v15, Ljava/util/TreeSet;

    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v14, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_0

    iget-object v14, v12, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewDangerousPermissions:Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid group name:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    # getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$300(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v14, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    new-instance v15, Ljava/util/TreeSet;

    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v14, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_0

    iget-object v14, v12, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewNormalPermissions:Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewDangerousPermissions:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->aggregatePermissions(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    # getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mNewComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$400()Ljava/util/Comparator;

    move-result-object v15

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewNormalPermissions:Ljava/util/Set;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v10}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->aggregatePermissions(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V

    # getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mNewComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$400()Ljava/util/Comparator;

    move-result-object v14

    invoke-static {v10, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getViewType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private aggregatePermissions(Ljava/util/Map;Ljava/util/Set;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;",
            ">;)V"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v15, Landroid/text/SpannableStringBuilder;

    invoke-direct {v15}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Set;

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v10, v13

    :goto_2
    or-int/2addr v6, v7

    iget-object v11, v14, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;->label:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    iget-object v3, v14, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;->description:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_1

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_2

    const-string v16, "<br><br>"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v16, "<b>"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0901fb

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v2, v18, v19

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v16, "</b><br><br>"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_3
    move-object v10, v15

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    new-instance v12, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    invoke-direct {v12}, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;-><init>()V

    iput-object v5, v12, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->headerText:Ljava/lang/String;

    iput-object v15, v12, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->contentText:Ljava/lang/CharSequence;

    iput-object v13, v12, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    iput-object v4, v12, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->detailedDescription:Ljava/lang/CharSequence;

    iput-boolean v6, v12, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->hasNewPermission:Z

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    # getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$500(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPermissionView(Landroid/view/ViewGroup;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)Landroid/view/View;
    .locals 12

    const/16 v10, 0x8

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400cd

    invoke-virtual {v8, v9, p1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0800cf

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v8, 0x7f0801c0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v8, 0x7f080019

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->headerText:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->contentText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v8, 0x7f0801bf

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$1;

    invoke-direct {v9, p0, p2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$1;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v7

    :cond_0
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->contentText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    # getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$200(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f07005c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f0901fb

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    aput-object v10, v9, v11

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    iget-object v9, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    # getter for: Lcom/google/android/finsky/layout/AppSecurityPermissions;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$200(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0c0023

    invoke-direct {v8, v9, v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iget-object v9, p2, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;->newContentText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v0, v8, v5, v9, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private getTogglerView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400ce

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter$2;-><init>(Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->configureExpander(Landroid/widget/TextView;)V

    return-object v0
.end method

.method private getView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    invoke-direct {p0, p2}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getViewType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getPermissionView(Landroid/view/ViewGroup;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    move v0, p2

    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;

    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getPermissionView(Landroid/view/ViewGroup;Lcom/google/android/finsky/layout/AppSecurityPermissions$DetailsEntry;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getTogglerView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v1, v0, :cond_0

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadLocalAssetPermissions(Landroid/content/pm/PackageInfo;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected configureExpander(Landroid/widget/TextView;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    # invokes: Lcom/google/android/finsky/layout/AppSecurityPermissions;->isCollapsed()Z
    invoke-static {v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$800(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f0200c0

    :goto_0
    invoke-virtual {p1, v3, v3, v0, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    # invokes: Lcom/google/android/finsky/layout/AppSecurityPermissions;->isCollapsed()Z
    invoke-static {v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$800(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f090164

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_0
    const v0, 0x7f0200c3

    goto :goto_0

    :cond_1
    const v1, 0x7f090166

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasNewPermissions()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewDangerousPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNewNormalPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mIsAppInstalled:Z

    return v0
.end method
