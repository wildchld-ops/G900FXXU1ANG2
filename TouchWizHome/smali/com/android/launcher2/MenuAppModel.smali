.class public final enum Lcom/android/launcher2/MenuAppModel;
.super Ljava/lang/Enum;
.source "MenuAppModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppModel$Normalizer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/MenuAppModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/MenuAppModel;

.field private static final DEBUG:Z

.field public static final enum INSTANCE:Lcom/android/launcher2/MenuAppModel;

.field public static final MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_INSTALL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MenuAppModel"

.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private mAppDiabledItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/launcher2/LauncherApplication;

.field private mCanUninstallApps:Z

.field private mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

.field private mFoldersAdded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldersRemoved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasHiddenItems:Z

.field private mInEditMode:Z

.field private mIsFinishFrontAppsLoader:Z

.field private mIsSafeMode:Z

.field private mMaxItemsPerPage:I

.field private mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendGets:Z

.field private mTopLevelItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher2/MenuAppModel;

    const-string v3, "INSTANCE"

    invoke-direct {v2, v3, v1}, Lcom/android/launcher2/MenuAppModel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    new-array v2, v0, [Lcom/android/launcher2/MenuAppModel;

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    aput-object v3, v2, v1

    sput-object v2, Lcom/android/launcher2/MenuAppModel;->$VALUES:[Lcom/android/launcher2/MenuAppModel;

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    new-instance v0, Lcom/android/launcher2/MenuAppModel$1;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    new-instance v0, Lcom/android/launcher2/MenuAppModel$2;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    new-instance v0, Lcom/android/launcher2/MenuAppModel$3;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$3;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_INSTALL_COMPARATOR:Ljava/util/Comparator;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mIsFinishFrontAppsLoader:Z

    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/launcher2/MenuAppModel;->integerCompare(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(JJ)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/text/Collator;
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private checkEditMode(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method requires mInEditMode to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static integerCompare(II)I
    .locals 1

    const/4 v0, 0x0

    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static longCompare(JJ)I
    .locals 2

    const/4 v0, 0x0

    cmp-long v1, p0, p2

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmp-long v1, p0, p2

    if-gez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private normalizeModel(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    :cond_0
    sget-boolean v0, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v1, "MenuAppModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normalizeModel. Normalizer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private setModelFlags()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-boolean v2, v1, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v2, :cond_3

    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    if-eqz v2, :cond_0

    :cond_2
    return-void

    :cond_3
    iget-boolean v2, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuAppModel;
    .locals 1

    const-class v0, Lcom/android/launcher2/MenuAppModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppModel;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/MenuAppModel;
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->$VALUES:[Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/MenuAppModel;

    return-object v0
.end method


# virtual methods
.method appsAddedOrRemoved(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_8

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v2, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->destroy()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->setModelFlags()V

    :cond_2
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v2, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v3, :cond_4

    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    goto :goto_1

    :cond_4
    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v3, :cond_5

    iget-object v3, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_5

    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    :cond_5
    iget-object v3, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->editBegin()V

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    :cond_8
    return-void
.end method

.method public canUninstallApps()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeFolderColor(Lcom/android/launcher2/AppFolderItem;)V
    .locals 6

    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v2, 0x6

    iput v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget v2, p1, Lcom/android/launcher2/BaseItem;->mColor:I

    iput v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public changeFolderName(Lcom/android/launcher2/AppFolderItem;)V
    .locals 6

    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v2, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public editAddFolder()Lcom/android/launcher2/AppFolderItem;
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    new-instance v0, Lcom/android/launcher2/AppFolderItem;

    invoke-direct {v0}, Lcom/android/launcher2/AppFolderItem;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :goto_0
    iput-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->editBegin()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public editBegin()V
    .locals 3

    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->editBegin()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    :cond_2
    return-void
.end method

.method public editCommit()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v5, :cond_b

    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->editCommit()V

    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v5, :cond_1

    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    goto :goto_0

    :cond_1
    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_0

    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v7}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    new-instance v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    iput v7, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v5, v0, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    iget v5, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    iget-object v5, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v7, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    goto :goto_1

    :cond_3
    iput-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-boolean v5, v2, Lcom/android/launcher2/BaseItem;->mDirty:Z

    if-eqz v5, :cond_5

    new-instance v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_6

    iput v8, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    :goto_3
    iget-wide v5, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget v5, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    iget v5, v2, Lcom/android/launcher2/AppItem;->mCell:I

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v7, v2, Lcom/android/launcher2/BaseItem;->mDirty:Z

    goto :goto_2

    :cond_6
    const/4 v5, 0x4

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-object v5, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v5, :cond_7

    iget-object v5, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v5, v5, Lcom/android/launcher2/BaseItem;->mId:J

    :goto_4
    iput-wide v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    iget-boolean v5, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    goto :goto_3

    :cond_7
    const-wide/16 v5, -0x1

    goto :goto_4

    :cond_8
    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    new-instance v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v5, 0x5

    iput v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v5, v0, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v5, v3, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    iput-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    :cond_a
    iput-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5, v4}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_b
    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    :cond_c
    return-void
.end method

.method public editInsertItemOnNewScreen(Lcom/android/launcher2/AppItem;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    iput p2, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v2, 0x0

    iput v2, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    if-eq v1, p1, :cond_0

    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-lt v2, p2, :cond_0

    iget v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    :cond_2
    return-void
.end method

.method public editIsDirty(Z)Z
    .locals 4

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/AppItem;->editIsDirty(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_3
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public editRemoveFolder()V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown folder or folder already removed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->editDestroy()V

    goto :goto_0
.end method

.method public editRevert()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->editRevert()V

    goto :goto_2

    :cond_4
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    invoke-direct {p0, v7}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    :cond_5
    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    :cond_6
    return-void
.end method

.method public findDisabledItemById(Ljava/lang/Long;)Lcom/android/launcher2/AppItem;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    :cond_0
    return-object v0
.end method

.method public findItemById(J)Lcom/android/launcher2/AppItem;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    :cond_0
    return-object v0
.end method

.method public getCurrentComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    goto :goto_0
.end method

.method public getDisabledAppList()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->clear()V

    :goto_0
    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v13, 0x200

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    const-wide/16 v13, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_7

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    iget-object v13, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher2/MenuAppModel;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    iget-boolean v13, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v13, :cond_0

    iget v13, v9, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_0

    iget-object v13, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v14, "com.sec.android.emergencylauncher"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    iget-object v13, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v14, "dummy"

    invoke-direct {v1, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/launcher2/AppItem;

    const/4 v13, 0x0

    invoke-direct {v4, v1, v13}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v13

    if-eqz v13, :cond_3

    :try_start_0
    invoke-virtual {v11, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v13

    iget v14, v12, Landroid/content/res/Resources;->mAppIconResId:I

    iget-object v15, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v12, v14, v15}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v13, v14}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_3
    :goto_3
    sget-boolean v13, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v13

    if-nez v13, :cond_5

    iget-object v13, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v13}, Lcom/android/launcher2/ThemeLoader;->loadAppIconBitmapByPackageName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-virtual {v5, v6}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_4
    if-nez v8, :cond_6

    :cond_5
    :goto_4
    iput-object v6, v4, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iput-wide v13, v4, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v9, v11}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v4, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    invoke-interface {v13, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_2

    :cond_6
    move-object v6, v8

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    sget-object v14, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    move-result-object v13

    return-object v13

    :catch_0
    move-exception v13

    goto :goto_3
.end method

.method public getFolderToDelete()Lcom/android/launcher2/AppFolderItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    return-object v0
.end method

.method public getHiddenApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-boolean v3, v2, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-interface {v3, v0, v4, v4}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    :cond_2
    sget-boolean v3, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v4, "MenuAppModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHiddenApps. count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_4

    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1
.end method

.method public getTopLevelItems()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    invoke-direct {p0, v8}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    :cond_1
    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    const-string v9, "com.sec.android.app.launcher.prefs"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "MenuView.ViewType"

    sget-object v9, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v4, v8, :cond_9

    iget-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mIsFinishFrontAppsLoader:Z

    if-nez v8, :cond_2

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppModel;->mIsFinishFrontAppsLoader:Z

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherProvider;->loadFrontApps()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    if-eqz v0, :cond_3

    iget-object v8, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_3

    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    iget-object v8, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_a

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    if-eqz v0, :cond_6

    iget-object v8, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_6

    const/4 v3, 0x0

    :goto_3
    iget-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_6

    iget-object v8, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v2, 0x1

    :cond_6
    if-nez v2, :cond_7

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    move-object v5, v7

    :cond_a
    return-object v5
.end method

.method public getUninstallableApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    if-nez v3, :cond_0

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->MENU_INSTALL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    sget-boolean v3, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v4, "MenuAppModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUninstallableApps. count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_5

    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1
.end method

.method public hasHiddenApps()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateTopLevelItems()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    return-void
.end method

.method isDisableAppListEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->getDisabledAppList()Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppDiabledItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v1, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v1, p2}, Lcom/android/launcher2/AppFolderItem;->normalize(Lcom/android/launcher2/MenuAppModel$Normalizer;)V

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-nez v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    invoke-interface {p2, v2, v3, p3}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    return-object v2
.end method

.method onLocaleChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    return-void
.end method

.method onModelRefreshed()V
    .locals 1

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    return-void
.end method

.method public releaseShadows()V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    return-void
.end method

.method public setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0b0023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    return-void
.end method

.method public setModelItems(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->getDisabledAppList()Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->setModelFlags()V

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    :cond_0
    return-void
.end method

.method public setNormalizer(Lcom/android/launcher2/MenuAppModel$Normalizer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p2, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    :cond_1
    return-void
.end method
