.class public Lcom/android/launcher2/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$14;,
        Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;,
        Lcom/android/launcher2/LauncherModel$LoaderTask;,
        Lcom/android/launcher2/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field public static final BACKUP_RESTORE_PREF_NAME:Ljava/lang/String; = "ExtraStuff"

.field private static final DEBUGGABLE:Z

.field private static final DEBUG_LOADERS:Z = true

.field private static final ITEMS_CHUNK:I = 0x6

.field private static final TAG:Ljava/lang/String; = "Launcher.Model"

.field public static UseLauncherHighPriority:Z

.field private static final sAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sCellCountX:I

.field private static sCellCountY:I

.field private static final sDbIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final sHomeFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHomeItemIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHomeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsCPFavorite:Z

.field private static final sSamsungWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/SamsungWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSurfaceWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/SurfaceWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private isLauncherProviderLoaded:Z

.field private volatile mAllAppsLoaded:Z

.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field private final mAppsCanBeOnExternalStorage:Z

.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field private volatile mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConfigMccWhenLoaded:I

.field private volatile mConfigMncWhenLoaded:I

.field private mHandler:Lcom/android/launcher2/DeferredHandler;

.field private final mHomeLoader:Lcom/android/launcher2/HomeLoader;

.field private volatile mIsOldTaskStopped:Z

.field private volatile mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field private volatile mLocaleWhenLoaded:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

.field private final mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private volatile mRefreshRequired:Z

.field private volatile mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V
    .locals 2
    .param p1    # Lcom/android/launcher2/LauncherApplication;
    .param p2    # Lcom/android/launcher2/PkgResCache;

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v1}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mIsOldTaskStopped:Z

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    new-instance v0, Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1}, Lcom/android/launcher2/BadgeCache;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    new-instance v0, Lcom/android/launcher2/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/HomeLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    new-instance v0, Lcom/android/launcher2/MenuAppLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/MenuAppLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/PkgResCache;)V
    .locals 2
    .param p1    # Lcom/android/launcher2/LauncherApplication;
    .param p2    # Lcom/android/launcher2/PkgResCache;
    .param p3    # Lcom/android/launcher2/PkgResCache;

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v1}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mIsOldTaskStopped:Z

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    new-instance v0, Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1}, Lcom/android/launcher2/BadgeCache;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    new-instance v0, Lcom/android/launcher2/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/HomeLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    new-instance v0, Lcom/android/launcher2/MenuAppLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p3, v1}, Lcom/android/launcher2/MenuAppLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherModel;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->unbindAllHomeItemsOnMainThread()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/LauncherModel;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/LauncherModel;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mIsOldTaskStopped:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/LauncherModel;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mIsOldTaskStopped:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/LauncherModel;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->setLocaleLocked()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/PkgResCache;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/LauncherModel;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V
    .locals 0
    .param p0    # Lcom/android/launcher2/LauncherModel;
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/launcher2/HomeShortcutItem;
    .param p3    # [B

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 0
    .param p0    # Lcom/android/launcher2/LauncherModel;
    .param p1    # Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    return-object v0
.end method

.method static synthetic access$2500()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    return v0
.end method

.method static synthetic access$2600()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/launcher2/LauncherModel;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Landroid/content/Intent;
    .param p3    # Landroid/content/Context;
    .param p4    # Landroid/database/Cursor;
    .param p5    # I
    .param p6    # I

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/launcher2/LauncherModel;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IIIII)Lcom/android/launcher2/HomeShortcutItem;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Landroid/content/Intent;
    .param p3    # Landroid/content/Context;
    .param p4    # Landroid/database/Cursor;
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I

    invoke-direct/range {p0 .. p9}, Lcom/android/launcher2/LauncherModel;->getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IIIII)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/launcher2/LauncherModel;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Landroid/content/Intent;
    .param p3    # Landroid/content/Context;
    .param p4    # Landroid/database/Cursor;
    .param p5    # I
    .param p6    # I

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;
    .param p1    # Landroid/database/Cursor;
    .param p2    # Landroid/content/Context;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # Landroid/content/pm/PackageManager;
    .param p9    # Landroid/content/Intent;

    invoke-direct/range {p0 .. p9}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 1
    .param p0    # Ljava/util/HashMap;
    .param p1    # J

    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/launcher2/LauncherModel;Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;
    .param p1    # Ljava/util/HashMap;
    .param p2    # Lcom/android/launcher2/HomeShortcutItem;
    .param p3    # Landroid/database/Cursor;
    .param p4    # I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/LauncherModel;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/BadgeCache;
    .locals 1
    .param p0    # Lcom/android/launcher2/LauncherModel;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    return v0
.end method

.method static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private addHomeItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;)Z
    .locals 9
    .param p1    # Lcom/android/launcher2/HomeView;
    .param p2    # Lcom/android/launcher2/HomeItem;

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    iget-wide v2, p2, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iget-wide v2, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/CellLayoutHotseat;

    iget v3, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v3, v2, Lcom/android/launcher2/CellLayoutHotseat;->mTargetCell:I

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2, p2}, Lcom/android/launcher2/CellLayoutHotseat;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    iput v6, v0, Lcom/android/launcher2/CellLayoutHotseat;->mTargetCell:I

    :goto_0
    return v1

    :cond_0
    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget v3, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    aput v3, v2, v7

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget v3, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    aput v3, v2, v8

    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v6, v2, v7

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v6, v2, v8

    goto :goto_0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V
    .locals 8
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/launcher2/HomeItem;
    .param p2    # J
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # Z

    const/4 v6, -0x1

    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput p4, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput p5, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput p6, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    const-wide/16 v4, -0x65

    cmp-long v4, p2, v4

    if-nez v4, :cond_0

    if-gez p4, :cond_0

    instance-of v4, p0, Lcom/android/launcher2/Launcher;

    if-eqz v4, :cond_0

    move-object v4, p0

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v4

    iput v4, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v6, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v6, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    :cond_0
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-static {p0, p1, v4}, Lcom/android/launcher2/LauncherModel;->setScreenAndContextualFlagIfNeed(Landroid/content/Context;Lcom/android/launcher2/HomeItem;Z)V

    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v3}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider;->generateNewHomeId()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/launcher2/HomeItem;->mId:J

    const-string v4, "_id"

    iget-wide v5, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v4, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v5, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/launcher2/HomeItem;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    iget-object v4, p1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_2

    sget-object v5, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-wide v6, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v2, Lcom/android/launcher2/LauncherModel$8;

    invoke-direct {v2, v1, p7, v3, p1}, Lcom/android/launcher2/LauncherModel$8;-><init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher2/HomeItem;)V

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_3
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V
    .locals 10
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/launcher2/HomeItem;
    .param p2    # J
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I

    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher2/HomeItem;->isContextualAwareHotseat:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p1, Lcom/android/launcher2/HomeItem;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    goto :goto_0

    :cond_1
    const-string v9, "moveItemInDatabase"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIIILjava/lang/String;)V

    goto :goto_0
.end method

.method private changeHomeItem(Lcom/android/launcher2/HomeView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .param p1    # Lcom/android/launcher2/HomeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/HomeView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    invoke-direct {p0, p1, v9}, Lcom/android/launcher2/LauncherModel;->removeHomeItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/LauncherModel;->addHomeItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v5, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 7
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/launcher2/HomeItem;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CP] deleteItemFromDatabase : sIsCPFavorite : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v3, p1, Lcom/android/launcher2/HomeItem;->mId:J

    const/4 v5, 0x0

    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    invoke-static {v3, v4, v5, v6}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZZ)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Lcom/android/launcher2/LauncherModel$10;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/launcher2/LauncherModel$10;-><init>(Lcom/android/launcher2/HomeItem;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_2
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$9;

    invoke-direct {v1, p1, v0, p0, p2}, Lcom/android/launcher2/LauncherModel$9;-><init>(Ljava/util/List;Landroid/content/ContentResolver;Landroid/content/Context;Z)V

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private dynamicCscToggleEasyMode(ZZILandroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1    # Z
    .param p2    # Z
    .param p3    # I
    .param p4    # Landroid/content/Context;
    .param p5    # Ljava/lang/String;

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamicCscToggleEasyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher2/LauncherModel$11;

    move-object v1, p0

    move v2, p3

    move v3, p2

    move v4, p1

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel$11;-><init>(Lcom/android/launcher2/LauncherModel;IZZLjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 2
    .param p1    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;J)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v0}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static getCellCountX()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    return v0
.end method

.method static getCellCountY()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    return v0
.end method

.method static getCellLayoutChildId(JIIIII)I
    .locals 2
    .param p0    # J
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I

    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1    # Landroid/database/Cursor;
    .param p2    # I
    .param p3    # Landroid/content/Context;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;
    .locals 17
    .param p0    # Landroid/content/Context;
    .param p1    # J
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cellY"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "spanX"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "spanY"

    aput-object v6, v4, v5

    const-string v5, "container=? and screen=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v3, "spanX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v3, "spanY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v12, Lcom/android/launcher2/HomeItem;

    invoke-direct {v12}, Lcom/android/launcher2/HomeItem;-><init>()V

    move-wide/from16 v0, p1

    iput-wide v0, v12, Lcom/android/launcher2/HomeItem;->container:J

    move/from16 v0, p3

    iput v0, v12, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->spanX:I

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v13

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;
    .locals 14
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Landroid/content/Intent;
    .param p3    # Landroid/content/Context;
    .param p4    # Landroid/database/Cursor;
    .param p5    # I
    .param p6    # I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-nez v10, :cond_7

    :try_start_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x2000

    invoke-virtual {p1, v9, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget v12, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x40000

    and-int/2addr v12, v13

    if-eqz v12, :cond_2

    new-instance v7, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v7, v12}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p4, :cond_5

    const/4 v12, 0x0

    :goto_1
    :try_start_1
    iput-object v12, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v12}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    :cond_2
    :goto_2
    if-eqz v6, :cond_0

    iget-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    :cond_3
    iget-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v12, :cond_4

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    :cond_4
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v12, v3}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v12

    iput v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    goto :goto_0

    :cond_5
    :try_start_2
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_3
    sget-boolean v12, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    if-eqz v12, :cond_2

    new-instance v6, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v6, v12}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    if-nez p4, :cond_6

    const/4 v12, 0x0

    :goto_4
    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0200d6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v4, v12}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_6
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_7
    new-instance v6, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v6, v12}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    new-instance v11, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v11}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v12, v11, v10}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    iget-object v12, v11, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v12, v11, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v5

    move-object v6, v7

    goto :goto_3
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 31
    .param p1    # Landroid/database/Cursor;
    .param p2    # Landroid/content/Context;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # Landroid/content/pm/PackageManager;
    .param p9    # Landroid/content/Intent;

    const/4 v12, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_a

    const/16 v28, 0x0

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v24

    if-nez v24, :cond_7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v28, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v28, "android.intent.action.MAIN"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    const/16 v17, 0x1

    sget-boolean v28, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v28, :cond_1

    const-string v28, "Launcher.Model"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "getShortcutInfo resolveInfo == null but not yet ready cn="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v17, :cond_2

    :try_start_0
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v28, 0x2000

    move-object/from16 v0, p8

    move-object/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    if-eqz v22, :cond_2

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v28, v0

    const/high16 v29, 0x40000

    and-int v28, v28, v29

    if-eqz v28, :cond_2

    new-instance v16, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v28, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_4

    const/16 v28, 0x0

    :goto_0
    :try_start_1
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/16 v18, 0x1

    move-object/from16 v15, v16

    :cond_2
    :goto_1
    if-eqz v18, :cond_6

    :cond_3
    :goto_2
    return-object v15

    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v28

    goto :goto_0

    :catch_0
    move-exception v10

    :goto_3
    sget-boolean v28, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    if-eqz v28, :cond_2

    new-instance v15, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v28, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v28

    invoke-direct {v15, v0}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    if-nez p1, :cond_5

    const/16 v28, 0x0

    :goto_4
    move-object/from16 v0, v28

    iput-object v0, v15, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0200d6

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v9, v0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v28

    move-object/from16 v0, v28

    iput-object v0, v15, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/16 v18, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    const-string v29, "com.android.email"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_9

    const-string v28, "com.android.settings.SHORTCUT"

    move-object/from16 v0, p9

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_8

    const-string v28, "android.intent.category.LAUNCHER"

    move-object/from16 v0, p9

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PkgResCache;->getTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v27

    :cond_9
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    const-string v29, "com.sec.android.app.latin.launcher.stk"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PkgResCache;->getTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v27

    :cond_a
    new-instance v15, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v15}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    if-nez v27, :cond_b

    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    :cond_b
    move-object/from16 v0, v27

    iput-object v0, v15, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    const/16 v28, 0x0

    move/from16 v0, v28

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    :cond_c
    :goto_5
    sget-boolean v28, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v28, :cond_d

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v28

    if-nez v28, :cond_d

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_d
    invoke-virtual {v15, v12}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    const-string v28, "iconMovieUri"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, v28

    iput-object v0, v15, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    goto/16 :goto_2

    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x0

    move/from16 v0, v28

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    :try_start_2
    move-object/from16 v0, p8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    :cond_e
    :goto_6
    if-nez v12, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_f
    if-nez v12, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_5

    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    if-nez v12, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    const/16 v28, 0x0

    move/from16 v0, v28

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_5

    :cond_10
    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    goto/16 :goto_5

    :catch_1
    move-exception v28

    goto :goto_6

    :catch_2
    move-exception v10

    move-object/from16 v15, v16

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;
    .locals 11
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Landroid/content/Intent;
    .param p3    # Landroid/content/Context;
    .param p4    # Landroid/database/Cursor;
    .param p5    # I
    .param p6    # I

    const-string v8, "Launcher.Model"

    const-string v9, "getShortcutInfo"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    sget-boolean v8, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v8, :cond_0

    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getShortcutInfo componentName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p1, p2, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    sget-boolean v8, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v8, :cond_1

    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getShortcutInfo rInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v5, :cond_5

    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_2
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v9, 0x40000

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    const/4 v7, 0x1

    :goto_1
    sget-boolean v8, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v8, :cond_3

    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getShortcutInfo unmounted="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v7, :cond_5

    invoke-direct {p0, p2}, Lcom/android/launcher2/LauncherModel;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v2, v8}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    new-instance v6, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v6}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v8, v6, p2}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    sget-boolean v8, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v8, :cond_6

    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "info.mTitle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_7

    if-eqz p4, :cond_7

    move/from16 v0, p5

    invoke-direct {p0, p4, v0, p3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    sget-boolean v8, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v8}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_7
    iget-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_8

    iget-object v8, v6, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_8
    iget-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_9

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    :cond_9
    iget-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v8, :cond_b

    if-eqz p4, :cond_b

    sget-boolean v8, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v8, :cond_a

    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "info.mTitle from DB = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move/from16 v0, p6

    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    :cond_b
    iget-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v8, :cond_c

    iget-object v8, v6, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    :cond_c
    iget-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v8, :cond_e

    sget-boolean v8, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v8, :cond_d

    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "info.mTitle from PM = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    :cond_e
    if-eqz p4, :cond_f

    const-string v8, "iconMovieUri"

    invoke-interface {p4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    invoke-static {p3, v2}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    :cond_f
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v8, v1}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v8

    iput v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    goto/16 :goto_0

    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method

.method private getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IIIII)Lcom/android/launcher2/HomeShortcutItem;
    .locals 18
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Landroid/content/Intent;
    .param p3    # Landroid/content/Context;
    .param p4    # Landroid/database/Cursor;
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I

    const-string v15, "Launcher.Model"

    const-string v16, "getShortcutInfo"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_0

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getShortcutInfo componentName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_1

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getShortcutInfo rInfo="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v10, :cond_5

    if-nez v4, :cond_2

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_2
    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2000

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/high16 v16, 0x40000

    and-int v15, v15, v16

    if-eqz v15, :cond_4

    const/4 v14, 0x1

    :goto_1
    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_3

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getShortcutInfo unmounted="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v14, :cond_5

    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    :cond_5
    new-instance v7, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v7}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    new-instance v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v13}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, p2

    invoke-virtual {v15, v13, v0}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_6

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "info.mTitle = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-interface/range {p4 .. p5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    iget-object v15, v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    :cond_7
    :goto_2
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v15, :cond_9

    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_8

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "info.mTitle from DB = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p4

    move/from16 v1, p9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    :cond_9
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v15, :cond_a

    iget-object v15, v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    :cond_a
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v15, :cond_c

    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_b

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "info.mTitle from PM = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    :cond_c
    const-string v15, "iconMovieUri"

    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-static {v0, v7}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v15, v4}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v15

    iput v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p4

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v11, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v15, v12, v6, v11}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    :goto_3
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_f
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_10

    iget-object v15, v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_10
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_11

    iget-object v15, v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_11
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_2

    :cond_12
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    goto/16 :goto_2

    :catch_0
    move-exception v15

    goto :goto_3

    :catch_1
    move-exception v15

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasLocaleChangedLocked()Z
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    iget v3, v1, Landroid/content/res/Configuration;->mcc:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    iget v3, v1, Landroid/content/res/Configuration;->mnc:I

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasLocaleChangedLocked. mcc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mnc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKnoxShortcut(Landroid/content/Intent;)Z
    .locals 5
    .param p1    # Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v2, "shortcutIntent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.knox.rcp.components"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.samsung.knox.rcp.components.KnoxShortcutActivity"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "persona_shortcut://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "knoxShortcut. will not remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V
    .locals 10
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/launcher2/HomeShortcutItem;

    iget-object v5, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v7, 0x400

    :try_start_1
    new-array v1, v7, [B

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v2

    sget-boolean v7, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_0

    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open move Uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    iget-object v7, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    :cond_1
    return-void

    :cond_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v7, 0x0

    array-length v8, v0

    invoke-static {v0, v7, v8}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v7

    iput-object v7, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    sget-boolean v7, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_0

    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException while accessing movie Uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static moveItemInContextualPage(Lcom/android/launcher2/LauncherProvider;ZJZ)V
    .locals 6
    .param p0    # Lcom/android/launcher2/LauncherProvider;
    .param p1    # Z
    .param p2    # J
    .param p4    # Z

    new-instance v0, Lcom/android/launcher2/LauncherModel$4;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel$4;-><init>(Lcom/android/launcher2/LauncherProvider;ZJZ)V

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIIILjava/lang/String;)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/launcher2/HomeItem;
    .param p2    # J
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # Ljava/lang/String;

    const/4 v3, -0x1

    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput p4, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput p5, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput p6, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput p7, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    iput p8, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    const-wide/16 v1, -0x65

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    if-gez p4, :cond_0

    instance-of v1, p0, Lcom/android/launcher2/Launcher;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v3, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v3, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    :cond_0
    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/android/launcher2/LauncherModel;->setScreenAndContextualFlagIfNeed(Landroid/content/Context;Lcom/android/launcher2/HomeItem;Z)V

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "spanX"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "spanY"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string v1, "screen"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p0, v0, p1, p9}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    return-void
.end method

.method public static moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    new-instance v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$FavoritePos;-><init>()V

    iget-wide v6, v2, Lcom/android/launcher2/HomeItem;->mId:J

    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    iget-wide v6, v2, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    iget v6, v2, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    iget v6, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellX:I

    iget v6, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellY:I

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    new-instance v5, Lcom/android/launcher2/LauncherModel$6;

    invoke-direct {v5, v0, v4}, Lcom/android/launcher2/LauncherModel$6;-><init>(Lcom/android/launcher2/LauncherApplication;Ljava/util/ArrayList;)V

    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    :cond_1
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    .locals 2
    .param p2    # Lcom/android/launcher2/HomeShortcutItem;
    .param p3    # Landroid/database/Cursor;
    .param p4    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/android/launcher2/HomeShortcutItem;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    if-nez v1, :cond_0

    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeHomeItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;)Z
    .locals 6
    .param p1    # Lcom/android/launcher2/HomeView;
    .param p2    # Lcom/android/launcher2/HomeItem;

    const/4 v1, 0x1

    iget-wide v2, p2, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iget-wide v2, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    goto :goto_0
.end method

.method private setLocaleLocked()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    iget v1, v0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    sget-boolean v1, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocaleLocked. mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static setScreenAndContextualFlagIfNeed(Landroid/content/Context;Lcom/android/launcher2/HomeItem;Z)V
    .locals 9
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/launcher2/HomeItem;
    .param p2    # Z

    const/4 v4, 0x1

    const/4 v3, 0x0

    instance-of v5, p0, Lcom/android/launcher2/Launcher;

    if-nez v5, :cond_1

    sput-boolean v3, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p0, Lcom/android/launcher2/Launcher;

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    const/4 v0, 0x0

    iget-wide v5, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-boolean v5, p1, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-eqz v5, :cond_2

    sput-boolean v4, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    iput-boolean v3, p1, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    goto :goto_0

    :cond_2
    iget v5, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v2, v5}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    sput-boolean v3, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    const-string v3, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CP] setScreenAndContextualFlagIfNeed 1 : sIsCPFavorite : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v3

    iput v3, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-nez p2, :cond_0

    iput-boolean v4, p1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    iget-wide v5, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v7, -0x65

    cmp-long v5, v5, v7

    if-nez v5, :cond_5

    sput-boolean v3, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CP] setScreenAndContextualFlagIfNeed 2 : sIsCPFavorite : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    iget-wide v5, p1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher2/HomeFolderItem;->isContextualPageItem:Z

    sput-boolean v3, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    const-string v3, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CP] setScreenAndContextualFlagIfNeed 3 : sIsCPFavorite : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    if-eqz v3, :cond_0

    if-nez p2, :cond_0

    iput-boolean v4, p1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    goto/16 :goto_0
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/Intent;

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "title=? and intent=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method private startLoader(ZZ)V
    .locals 3
    .param p1    # Z
    .param p2    # Z

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLoader. isLaunching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; forceRefresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    or-int/2addr p1, v0

    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher2/LauncherModel;Z)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopLoaderLocked()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    :cond_1
    return v0
.end method

.method private unbindAllHomeItemsOnMainThread()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherModel$2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherModel$2;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static updateAppItems(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$5;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher2/LauncherModel$5;-><init>(Lcom/android/launcher2/LauncherProvider;Ljava/util/List;)V

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # J
    .param p3    # Landroid/content/ContentValues;

    const-string v4, "container"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot change container field for item id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v4, 0x0

    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    invoke-static {p1, p2, v4, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZZ)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Lcom/android/launcher2/LauncherModel$7;

    invoke-direct {v2, v0, v3, p3}, Lcom/android/launcher2/LauncherModel$7;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/launcher2/HomeItem;

    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    sput-boolean v1, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    iget v1, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher2/HomeItem;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    const-string v1, "updateItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    return-void
.end method

.method private static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V
    .locals 12
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/content/ContentValues;
    .param p2    # Lcom/android/launcher2/HomeItem;
    .param p3    # Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v7, 0x0

    iget-wide v5, p2, Lcom/android/launcher2/HomeItem;->mId:J

    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_0

    const-string v3, "moveItemInDatabase"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v8

    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p2, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-nez v3, :cond_2

    const-string v3, "Launcher.Model"

    const-string v9, "[CP] curPage is CP, item is from normal : normal db -> cp db "

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v9, p2, Lcom/android/launcher2/HomeItem;->mId:J

    iget-object v3, p2, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v11, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v8, v4, v9, v10, v3}, Lcom/android/launcher2/LauncherModel;->moveItemInContextualPage(Lcom/android/launcher2/LauncherProvider;ZJZ)V

    iput-boolean v4, p2, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    :cond_0
    :goto_1
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    invoke-static {v5, v6, v7, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Lcom/android/launcher2/LauncherModel$3;

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;JLjava/lang/String;)V

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_2
    return-void

    :cond_1
    move v3, v7

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    if-nez v3, :cond_0

    iget-boolean v3, p2, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher.Model"

    const-string v9, "[CP] curPage is noraml, item is from CP : cp db -> normal cp db "

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v9, p2, Lcom/android/launcher2/HomeItem;->mId:J

    iget-object v3, p2, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v11, :cond_3

    :goto_3
    invoke-static {v8, v7, v9, v10, v4}, Lcom/android/launcher2/LauncherModel;->moveItemInContextualPage(Lcom/android/launcher2/LauncherProvider;ZJZ)V

    iput-boolean v7, p2, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    goto :goto_1

    :cond_3
    move v4, v7

    goto :goto_3

    :cond_4
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/launcher2/HomeShortcutItem;
    .param p3    # [B

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    const/4 v5, 0x0

    :try_start_0
    array-length v6, p3

    invoke-static {p3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v1, p2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "going to save icon bitmap for info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method static updateWorkspaceLayoutCells(II)V
    .locals 0
    .param p0    # I
    .param p1    # I

    sput p0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    sput p1, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    return-void
.end method


# virtual methods
.method public ChangeCallapp(Lcom/android/launcher2/HomeView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1    # Lcom/android/launcher2/HomeView;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    sget-object v6, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    iget-wide v6, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, p1, v4, p4, p5}, Lcom/android/launcher2/LauncherModel;->setCallAppItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher2/HomeItem;

    move-result-object v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v3, 0x0

    :goto_1
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    sget-object v6, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    iget-wide v6, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    iget v6, v4, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/android/launcher2/LauncherModel;->setCallAppItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher2/HomeItem;

    move-result-object v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0, p1, v2, v0}, Lcom/android/launcher2/LauncherModel;->changeHomeItem(Lcom/android/launcher2/HomeView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public HomeViewCount()I
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;
    .param p3    # J
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/android/launcher2/HomeShortcutItem;->isContextualPageItem:Z

    sput-boolean v0, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    :cond_0
    move-object v0, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    return-object v1
.end method

.method public bindContextualPageItems(I)V
    .locals 3
    .param p1    # I

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindContextualPageItems CPType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$13;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/LauncherModel$13;-><init>(Lcom/android/launcher2/LauncherModel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dumpState()V
    .locals 4

    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallbacks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.added"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.removed"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.modified"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->dumpState()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Launcher.Model"

    const-string v2, "mLoaderTask=null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 16
    .param p1    # Landroid/content/Context;
    .param p3    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;J)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=? and itemType=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x1

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-static/range {p2 .. p4}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v12

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v12, Lcom/android/launcher2/HomeFolderItem;->container:J

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeFolderItem;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v12

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 7
    .param p1    # Landroid/content/pm/PackageManager;
    .param p2    # Landroid/content/Intent;
    .param p3    # Landroid/content/Context;

    const/4 v5, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method public hasLocaleChanged()Z
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 18
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;
    .param p3    # Landroid/graphics/Bitmap;

    const-string v15, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    const-string v15, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    instance-of v15, v1, Landroid/graphics/Bitmap;

    if-eqz v15, :cond_7

    check-cast v1, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v3, 0x1

    :cond_0
    :goto_0
    new-instance v9, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v9}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    sget-boolean v15, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    if-ne v3, v15, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {v9, v6}, Lcom/android/launcher2/HomeShortcutItem;->setCustomIcon(Landroid/graphics/Bitmap;)V

    :cond_1
    if-nez v6, :cond_2

    if-eqz p3, :cond_8

    move-object/from16 v6, p3

    :cond_2
    :goto_1
    sget-boolean v15, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v15, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v11, v6}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_3
    invoke-virtual {v9, v6}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    const-string v15, "photoUri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    iput-object v15, v9, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    iget-object v15, v9, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    if-eqz v15, :cond_4

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    :cond_4
    iput-object v12, v9, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    iput-object v10, v9, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    iput-boolean v3, v9, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    iput-object v7, v9, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_5

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "title: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", intent: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", customIcon: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", iconResource: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v15, v2}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v15

    iput v15, v9, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    :cond_6
    return-object v9

    :cond_7
    const-string v15, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_0

    instance-of v15, v5, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v15, :cond_0

    :try_start_0
    move-object v0, v5

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v7, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    iget-object v15, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    iget-object v15, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v0, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v8, v0}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    :catch_0
    move-exception v4

    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_0

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not load shortcut icon: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v15, 0x1

    iput-boolean v15, v9, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_1
.end method

.method public initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 3
    .param p1    # Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->onLocaleChanged()V

    const-string v0, "Launcher.Model"

    const-string v2, "MenuAppModel.onLocaleChanged called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 44
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "onReceive intent="

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v30

    const-string v3, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v34

    const/16 v29, 0x0

    if-eqz v30, :cond_2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v29, 0x2

    :cond_4
    :goto_1
    if-eqz v29, :cond_2

    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/16 v42, 0x0

    aput-object v30, v7, v42

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v3, v0, v1, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    sget-object v28, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->clearWidgets()V

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v37

    const/16 v25, 0x0

    :goto_2
    move/from16 v0, v25

    move/from16 v1, v37

    if-ge v0, v1, :cond_2

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual/range {v40 .. v40}, Lcom/android/launcher2/SurfaceWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual/range {v40 .. v40}, Lcom/android/launcher2/SurfaceWidgetItem;->getThemName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v7}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v38

    if-eqz v38, :cond_5

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v3, :cond_5

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-object/from16 v0, v38

    iget v7, v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    iput v7, v3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    :cond_5
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    :cond_6
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v34, :cond_4

    const/16 v29, 0x3

    goto :goto_1

    :cond_7
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v34, :cond_e

    const-string v3, "ExtraStuff"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v32

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v13, 0x0

    :try_start_0
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "container=? and intent like ? "

    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v42, -0x64

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    aput-object v42, v6, v7

    const/4 v7, 0x1

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0x25

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    aput-object v42, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    const/16 v35, -0x1

    :cond_8
    :goto_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v7, "replace"

    const/16 v42, 0x1

    move/from16 v0, v42

    invoke-interface {v3, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "screen"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    const-string v3, "itemType"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    const/4 v3, 0x4

    move/from16 v0, v39

    if-eq v0, v3, :cond_9

    const/16 v3, 0x384

    move/from16 v0, v39

    if-eq v0, v3, :cond_9

    const/16 v3, 0x385

    move/from16 v0, v39

    if-ne v0, v3, :cond_8

    :cond_9
    const-string v3, "_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const-string v3, "appWidgetId"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    const-string v3, "spanX"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v3, "spanY"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v3, "cellX"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v3, "cellY"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string v3, "intent"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v3, ":"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/4 v3, 0x1

    aget-object v17, v36, v3

    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.launcher.action.INSTALL_WIDGET"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "replace"

    const/4 v7, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "package"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "class"

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "type"

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "cellX"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "cellY"

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "spanX"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "spanY"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "screen"

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v7, 0x8000000

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v3, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v41

    :try_start_1
    invoke-virtual/range {v41 .. v41}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "_id = "

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v42, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v2, v3, v7, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v3

    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    :catch_0
    move-exception v20

    :try_start_3
    const-string v3, "Launcher.Model"

    const-string v7, "widget reinstall error. "

    move-object/from16 v0, v20

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_b
    const/4 v3, -0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_c

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->setRefreshRequired(Z)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    if-eqz v13, :cond_d

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_d
    const/16 v29, 0x1

    goto/16 :goto_1

    :cond_e
    const/16 v29, 0x2

    goto/16 :goto_1

    :cond_f
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_2

    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v7, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v7, v1}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    :cond_10
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_2

    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v7, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v7, v1}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    :cond_11
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    goto/16 :goto_0

    :cond_12
    const-string v3, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/LauncherModel$Callbacks;

    if-eqz v14, :cond_2

    invoke-interface {v14}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindSearchablesChanged()V

    goto/16 :goto_0

    :cond_14
    const-string v3, "com.android.launcher.action.DYNAMICCSC_MODE_CHANGE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_Launcher_DynamicCSCFeature"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "dynamicmode"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v3, "dynamicmode_from"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v3, "theme_install_status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "basicEasymode"

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v3, "dynamic_csc"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v3, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "EASY MODE SWITCH easyMode: "

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v42, " fromSettings :"

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/LauncherModel;->dynamicCscToggleEasyMode(ZZILandroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const-string v3, "android.intent.action.STK_TITLE_IS_LOADED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "Launcher.Model"

    const-string v7, "STK Refresh : intent recieved by launcher model"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_RIL_FixedStkMenu"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v23

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v7, "CscFeature_Launcher_FixedStkTitleAs"

    invoke-virtual {v3, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v3, "gsm.STK_SETUP_MENU"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v21, :cond_16

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_16
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v29, 0x2

    if-eqz v23, :cond_17

    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/16 v42, 0x0

    aput-object v30, v7, v42

    const/16 v42, 0x1

    const-string v43, "com.sec.android.app.latin.launcher.stk"

    aput-object v43, v7, v42

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v3, v0, v1, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    :goto_5
    sget-object v28, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->clearWidgets()V

    goto/16 :goto_0

    :cond_17
    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/16 v42, 0x0

    aput-object v30, v7, v42

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v3, v0, v1, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_5

    :cond_18
    const-string v3, "android.intent.action.CSC_CHAMELEON_UPDATE_LAUNCHER"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "delete_db"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    const-string v3, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Received CSC_CHAMELEON_UPDATE_LAUNCHER intent :: "

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v19, :cond_2

    const-string v3, "launcher.db"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "Launcher.Model"

    const-string v7, "Launcher Database deleted successfully"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    new-instance v24, Landroid/content/Intent;

    const-class v3, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x14000000

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x200000

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_19
    const-string v3, "Launcher.Model"

    const-string v7, "Unable to delete launcher database"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public reloadBadges()V
    .locals 3

    const-string v1, "Launcher.Model"

    const-string v2, "reloadBadges entered."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/launcher2/LauncherModel$12;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$12;-><init>(Lcom/android/launcher2/LauncherModel;)V

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCallAppItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher2/HomeItem;
    .locals 6
    .param p1    # Lcom/android/launcher2/HomeView;
    .param p2    # Lcom/android/launcher2/HomeItem;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;

    new-instance v1, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v4, p2, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v1, v4}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v3}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/launcher2/HomeShortcutItem;->isContextualAwareHotseat:Z

    iget-wide v4, p2, Lcom/android/launcher2/HomeItem;->mId:J

    iput-wide v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    iget v4, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    iget v4, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v4, v1, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    iget v4, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v4, v1, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    iget-wide v4, p2, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v4, v1, Lcom/android/launcher2/HomeShortcutItem;->container:J

    return-object v1
.end method

.method public setRefreshRequired(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    return-void
.end method

.method public startLoader()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/LauncherModel;->startLoader(ZZ)V

    return-void
.end method

.method public startLoaderFromBackground(Z)V
    .locals 3
    .param p1    # Z

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/LauncherModel;->startLoader(ZZ)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unbindAllHomeItems()V
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$1;-><init>(Lcom/android/launcher2/LauncherModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
