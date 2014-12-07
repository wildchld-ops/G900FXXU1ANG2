.class public Lcom/android/launcher2/ContextualPageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContextualPageReceiver.java"


# static fields
.field private static final ACTION_SPEN_EVENT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field private static final DEBUGGABLE:Z

.field private static final DOCK_MASK:I = 0x4

.field private static final EARPHONE_MASK:I = 0x2

.field private static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field private static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final ROAMING_MASK:I = 0x8

.field private static final SPEN_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContextualPageReceiver"

.field private static mCPMgr:Lcom/android/launcher2/ContextualPageManager;

.field private static mContext:Landroid/content/Context;

.field private static mCpBitFlag:I

.field private static final mCpSettingObserver:Landroid/database/ContentObserver;

.field private static mResolver:Landroid/content/ContentResolver;


# instance fields
.field private POSTED_FLAG:[Z

.field private mPageActive:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/ContextualPageReceiver;->DEBUGGABLE:Z

    new-instance v0, Lcom/android/launcher2/ContextualPageReceiver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher2/ContextualPageReceiver$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/launcher2/ContextualPageReceiver;->mCpSettingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageReceiver;->mPageActive:[Z

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageReceiver;->POSTED_FLAG:[Z

    sput-object p1, Lcom/android/launcher2/ContextualPageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000()Landroid/content/ContentResolver;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/launcher2/ContextualPageManager;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/ContextualPageReceiver;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageReceiver;->POSTED_FLAG:[Z

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/ContextualPageReceiver;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ContextualPageReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/ContextualPageReceiver;)[Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageReceiver;->mPageActive:[Z

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    return v0
.end method

.method static synthetic access$672(I)I
    .locals 1

    sget v0, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    and-int/2addr v0, p0

    sput v0, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    return v0
.end method

.method static synthetic access$676(I)I
    .locals 1

    sget v0, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    or-int/2addr v0, p0

    sput v0, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    return v0
.end method

.method public static checkAllContextualPage()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page_s_pen"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page_earphone"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page_audio_dock"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page_roaming"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v5, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_2

    if-ne v4, v7, :cond_5

    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    :cond_2
    :goto_1
    sget v5, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    and-int/lit8 v5, v5, 0x2

    if-ne v5, v9, :cond_3

    if-ne v1, v7, :cond_6

    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v9}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    :cond_3
    :goto_2
    sget v5, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    and-int/lit8 v5, v5, 0x4

    if-ne v5, v10, :cond_4

    if-ne v0, v7, :cond_7

    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v11}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    :cond_4
    :goto_3
    sget v5, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    if-ne v3, v7, :cond_8

    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    goto :goto_1

    :cond_6
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v9}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    goto :goto_2

    :cond_7
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v11}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    goto :goto_3

    :cond_8
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/ContextualPageReceiver;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Lcom/android/launcher2/ContextualPageReceiver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ContextualPageReceiver;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-object p1, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v2, 0x0

    sput v2, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    invoke-static {}, Lcom/android/launcher2/ContextualPageReceiver;->checkAllContextualPage()V

    sget-object v2, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "contextual_page"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/ContextualPageReceiver;->mCpSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v2, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "contextual_page_s_pen"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/ContextualPageReceiver;->mCpSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v2, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "contextual_page_earphone"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/ContextualPageReceiver;->mCpSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v2, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "contextual_page_audio_dock"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/ContextualPageReceiver;->mCpSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v2, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "contextual_page_roaming"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/ContextualPageReceiver;->mCpSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-object v0
.end method

.method private declared-synchronized runDealyedReceiverEvent(III)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageReceiver;->POSTED_FLAG:[Z

    aget-boolean v0, v0, p3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageReceiver;->POSTED_FLAG:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p3

    sget-object v0, Lcom/android/launcher2/ContextualPageReceiver;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/ContextualPageReceiver$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/launcher2/ContextualPageReceiver$2;-><init>(Lcom/android/launcher2/ContextualPageReceiver;III)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v25, "contextual_page"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v25, "contextual_page_s_pen"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v25, "contextual_page_earphone"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v25, "contextual_page_audio_dock"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v25, "contextual_page_roaming"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    move-object/from16 v12, p1

    check-cast v12, Lcom/android/launcher2/Launcher;

    iget-object v0, v12, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v24

    if-eqz v24, :cond_1

    const-string v24, "ContextualPageReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onReceive... but workspace is loading... so will be binded at post, intent : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ContextualPageManager;->addPostBindList(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v24, "com.samsung.pen.INSERT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    const-string v24, "penInsert"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v24, "ContextualPageReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mContextualPageReceiver: penInsert : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    move/from16 v17, v10

    move/from16 v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageReceiver;->mPageActive:[Z

    move-object/from16 v25, v0

    const/16 v26, 0x1

    if-nez v6, :cond_2

    const/16 v24, 0x1

    :goto_1
    aput-boolean v24, v25, v26

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/ContextualPageReceiver;->runDealyedReceiverEvent(III)V

    goto :goto_0

    :cond_2
    const/16 v24, 0x0

    goto :goto_1

    :cond_3
    const-string v24, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    const-string v24, "state"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    const/4 v6, 0x1

    :goto_2
    const-string v24, "ContextualPageReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mContextualPageReceiver: EarJack bPluged : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_6

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/16 v25, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ContextualPageManager;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v10, v0, :cond_4

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v8, v0, :cond_4

    sget v24, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    and-int/lit8 v24, v24, 0x2

    if-nez v24, :cond_4

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    :cond_4
    sget v24, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    or-int/lit8 v24, v24, 0x2

    sput v24, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v10, v0, :cond_7

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v8, v0, :cond_7

    sget v24, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    and-int/lit8 v24, v24, 0x2

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    :cond_7
    sget v24, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    and-int/lit8 v24, v24, -0x3

    sput v24, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    goto/16 :goto_0

    :cond_8
    const-string v24, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    const-string v24, "android.intent.extra.DOCK_STATE"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const/4 v15, 0x3

    move/from16 v17, v10

    move/from16 v16, v7

    packed-switch v13, :pswitch_data_0

    :goto_3
    :pswitch_0
    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/ContextualPageReceiver;->runDealyedReceiverEvent(III)V

    goto/16 :goto_0

    :pswitch_1
    const-string v24, "ContextualPageReceiver"

    const-string v25, "mContextualPageReceiver: EXTRA_DOCK_STATE_AUDIO_DOCK DockConnected "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_2
    const-string v24, "ContextualPageReceiver"

    const-string v25, "mContextualPageReceiver: EXTRA_DOCK_STATE_DESK DockConnected "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageReceiver;->mPageActive:[Z

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x1

    aput-boolean v26, v24, v25

    goto :goto_3

    :pswitch_3
    const-string v24, "ContextualPageReceiver"

    const-string v25, "mContextualPageReceiver: EXTRA_DOCK_STATE_UNDOCKED"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageReceiver;->mPageActive:[Z

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x0

    aput-boolean v26, v24, v25

    goto :goto_3

    :cond_9
    const-string v24, "android.intent.action.SERVICE_STATE"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    if-eqz v24, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v11

    const-string v24, "ContextualPageReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mContextualPageReceiver: ACTION_SERVICE_STATE_CHANGED isRoaming : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_4
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ge v9, v0, :cond_b

    if-nez v11, :cond_b

    const-string v24, "gsm.operator.isroaming"

    move-object/from16 v0, v24

    invoke-static {v0, v9}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-nez v11, :cond_a

    if-eqz v22, :cond_a

    const/4 v11, 0x1

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_b
    if-eqz v11, :cond_d

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/16 v25, 0x4

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ContextualPageManager;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v10, v0, :cond_c

    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    sget v24, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    and-int/lit8 v24, v24, 0x8

    if-nez v24, :cond_c

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    :cond_c
    sget v24, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    or-int/lit8 v24, v24, 0x8

    sput v24, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    goto/16 :goto_0

    :cond_d
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v10, v0, :cond_e

    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    sget v24, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    and-int/lit8 v24, v24, 0x8

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/16 v25, 0x4

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    :cond_e
    sget v24, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    and-int/lit8 v24, v24, -0x9

    sput v24, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    goto/16 :goto_0

    :cond_f
    const-string v24, "com.android.music.metachanged"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_10

    const-string v24, "com.android.music.playstatechanged"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    :cond_10
    const-string v24, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v24, "playing"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    const-string v24, "ContextualPageReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mContextualPageReceiver: META_CHANGED || PLAYSTATE_CHANGED - , playing - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/android/launcher2/ContextualPageManager;->setIsMusicPlaying(Z)V

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/android/launcher2/ContextualPageManager;->setCurrentArtist(Ljava/lang/String;)V

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v10, v0, :cond_0

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v8, v0, :cond_0

    sget v24, Lcom/android/launcher2/ContextualPageReceiver;->mCpBitFlag:I

    and-int/lit8 v24, v24, 0x2

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/ContextualPageManager;->displayEmotionalTitleText(I)V

    goto/16 :goto_0

    :cond_11
    const-string v24, "android.intent.action.TIME_SET"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    sget-object v24, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/16 v25, 0x3

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/ContextualPageManager;->displayEmotionalTitleText(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unregister()V
    .locals 3

    :try_start_0
    sget-object v1, Lcom/android/launcher2/ContextualPageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v1, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/launcher2/ContextualPageReceiver;->mCpSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ContextualPageReceiver"

    const-string v2, "unregister error, IllegalArgumentException has occured. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
