.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static final SHORTCUT_MIMETYPE:Ljava/lang/String; = "com.android.launcher/shortcut"

.field private static final mCoordinates:[I

.field private static mCountX:I

.field private static mCountY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .locals 22

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    sget v3, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    const-wide/16 v2, -0x64

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v2, v3, v1}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeItem;

    iget v8, v11, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v9, v11, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v14, v11, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v15, v11, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v20, v8

    :goto_0
    add-int v2, v8, v14

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    move/from16 v21, v9

    :goto_1
    add-int v2, v9, v15

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    aget-object v2, v7, v20

    const/4 v3, 0x1

    aput-boolean v3, v2, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v2, "tempScreen"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_4

    const-string v2, "tempCellX"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    const-string v2, "tempCellY"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    const-string v2, "tempSpanX"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    const-string v2, "tempSpanY"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v20, v16

    :goto_2
    add-int v2, v16, v18

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    move/from16 v21, v17

    :goto_3
    add-int v2, v17, v19

    move/from16 v0, v21

    if-ge v0, v2, :cond_3

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_3

    aget-object v2, v7, v20

    const/4 v3, 0x1

    aput-boolean v3, v2, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    sget v6, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v2

    return v2
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v10, 0x0

    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    invoke-static {p1, v0, p3}, Lcom/android/launcher2/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/LauncherApplication;

    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v11}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    const-wide/16 v3, -0x64

    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v2, 0x0

    aget v6, v1, v2

    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    aget v7, v1, v8

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;

    :cond_0
    const/4 v10, 0x1

    :cond_1
    return v10
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    const-string v17, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v17, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    const-string v17, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    if-eqz v8, :cond_0

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_2

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v10

    :cond_3
    const-string v17, "duplicate"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v0, p1

    invoke-static {v0, v12, v8}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v17

    if-eqz v17, :cond_5

    const v17, 0x7f0e001d

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_1
    const-string v17, "JPN"

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v9, v4, v0}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_0

    :cond_4
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v17, 0x7f0b001c

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    sput v17, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    const v17, 0x7f0b001d

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    sput v17, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v16

    const/4 v6, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v6, v0, :cond_7

    if-nez v7, :cond_7

    if-eq v6, v15, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    const v17, 0x7f0e001b

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    :cond_8
    const v17, 0x7f0e001a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    :cond_9
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
