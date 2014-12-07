.class public Lcom/android/launcher2/ContextualPageManager;
.super Ljava/lang/Object;
.source "ContextualPageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    }
.end annotation


# static fields
.field public static CP_DARKEN_AMOUNT:F = 0.0f

.field static final CSC_FILE_WORKSPACE_CP:Ljava/lang/String; = "/system/csc/default_workspace_cp.xml"

.field private static final DEBUG:Z = true

.field private static final DEBUGGABLE:Z

.field public static final IN_HOTSEAT_POSITION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;",
            ">;"
        }
    .end annotation
.end field

.field static MAX_AWARE_HOTSEAT_CELL_COUNT:I = 0x0

.field static final MAX_CONTEXTUALPAGE_NUM:I = 0x4

.field public static final NOTI_CLEAR:Ljava/lang/String; = "com.sec.android.app.launcher.ContextualPageManager.NOTI_CLEAR"

.field private static final STATUS_DOCK_URI:Landroid/net/Uri;

.field private static final STATUS_EARPHONE_URI:Landroid/net/Uri;

.field private static final STATUS_ROAMING_URI:Landroid/net/Uri;

.field private static final STATUS_SPEN_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "ContextualPageManager"

.field private static awareHotseatItemsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mLaunchableHotseatItemsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPostBindList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentArtist:Ljava/lang/String;

.field private isMusicPlaying:Z

.field private final mDeskCradleObserver:Landroid/database/ContentObserver;

.field private mHasPostWork:Z

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mHotseat:Lcom/android/launcher2/Hotseat;

.field private final mHotseatItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    const-string v0, "content://com.samsung.android.providers.context/app_usage/recent/spen"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->STATUS_SPEN_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.providers.context/app_usage/recent/earphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->STATUS_EARPHONE_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.providers.context/app_usage/recent/docking"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->STATUS_DOCK_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.providers.context/app_usage/recent/roaming"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->STATUS_ROAMING_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->mPostBindList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->awareHotseatItemsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->mLaunchableHotseatItemsMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/launcher2/ContextualPageManager$5;

    invoke-direct {v0}, Lcom/android/launcher2/ContextualPageManager$5;-><init>()V

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->IN_HOTSEAT_POSITION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 2
    .param p1    # Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/launcher2/ContextualPageManager;->isMusicPlaying:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->currentArtist:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/launcher2/ContextualPageManager;->mHasPostWork:Z

    new-instance v0, Lcom/android/launcher2/ContextualPageManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/ContextualPageManager$1;-><init>(Lcom/android/launcher2/ContextualPageManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mDeskCradleObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/Workspace;
    .locals 1
    .param p0    # Lcom/android/launcher2/ContextualPageManager;

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/ContextualPageManager;ZI)V
    .locals 0
    .param p0    # Lcom/android/launcher2/ContextualPageManager;
    .param p1    # Z
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/ContextualPageManager;->moveToScreen(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/ContextualPageManager;I)V
    .locals 0
    .param p0    # Lcom/android/launcher2/ContextualPageManager;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/launcher2/ContextualPageManager;->removePage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/Launcher;
    .locals 1
    .param p0    # Lcom/android/launcher2/ContextualPageManager;

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method private duplicateCheckOfAwareHotseat(ILjava/util/ArrayList;Ljava/lang/String;)Z
    .locals 2
    .param p1    # I
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v1, v1, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getEmotionalTitleText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 8
    .param p1    # Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "[\"\u201c\u201d\u201e\u201f]"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_1

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, 0x7f090024

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-virtual {v5, v6, v2, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method private loadHotseatItem()Z
    .locals 17

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    new-instance v4, Ljava/io/File;

    const-string v13, "/system/csc/default_workspace_cp.xml"

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_5

    new-instance v2, Ljava/io/FileReader;

    const-string v13, "/system/csc/default_workspace_cp.xml"

    invoke-direct {v2, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    invoke-interface {v10, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v8, 0x1

    move-object v1, v2

    :goto_0
    :try_start_3
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    :cond_0
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_1

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v5, :cond_6

    :cond_1
    const/4 v13, 0x1

    if-eq v12, v13, :cond_6

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v13, "hotseat"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v8}, Lcom/android/launcher2/ContextualPageManager;->loadHotseatItemContainer(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Z)V

    :cond_2
    sget-boolean v13, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v13, :cond_0

    const-string v13, "ContextualPageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid tag <"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "> detected while parsing favorites at line "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v3, v4

    :goto_2
    :try_start_4
    sget-boolean v13, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v13, :cond_3

    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_3
    const/4 v13, 0x0

    :goto_4
    return v13

    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060008

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    const-string v13, "favorites"

    invoke-static {v11, v13}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v10, v11

    goto/16 :goto_0

    :cond_6
    const/4 v13, 0x1

    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_7
    :goto_5
    move-object v3, v4

    goto :goto_4

    :catch_1
    move-exception v6

    sget-boolean v14, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v14, :cond_7

    const-string v14, "ContextualPageManager"

    const-string v15, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_2
    move-exception v6

    sget-boolean v13, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v13, :cond_4

    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_3
    move-exception v6

    :goto_6
    :try_start_8
    sget-boolean v13, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v13, :cond_8

    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_8
    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_4
    move-exception v6

    sget-boolean v13, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v13, :cond_4

    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_5
    move-exception v6

    :goto_7
    :try_start_a
    sget-boolean v13, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v13, :cond_9

    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_9
    if-eqz v1, :cond_4

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    :catch_6
    move-exception v6

    sget-boolean v13, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v13, :cond_4

    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_0
    move-exception v13

    :goto_8
    if-eqz v1, :cond_a

    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :cond_a
    :goto_9
    throw v13

    :catch_7
    move-exception v6

    sget-boolean v14, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v14, :cond_a

    const-string v14, "ContextualPageManager"

    const-string v15, "Got exception parsing default_workspace_cp.xml"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catchall_1
    move-exception v13

    move-object v3, v4

    goto :goto_8

    :catchall_2
    move-exception v13

    move-object v1, v2

    move-object v3, v4

    goto :goto_8

    :catch_8
    move-exception v6

    move-object v3, v4

    goto :goto_7

    :catch_9
    move-exception v6

    move-object v1, v2

    move-object v3, v4

    goto :goto_7

    :catch_a
    move-exception v6

    move-object v3, v4

    goto :goto_6

    :catch_b
    move-exception v6

    move-object v1, v2

    move-object v3, v4

    goto :goto_6

    :catch_c
    move-exception v6

    goto/16 :goto_2

    :catch_d
    move-exception v6

    move-object v1, v2

    move-object v3, v4

    goto/16 :goto_2
.end method

.method private loadHotseatItemContainer(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 14
    .param p1    # Landroid/content/Context;
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v11, 0x3

    if-ne v9, v11, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v8, :cond_2

    :cond_1
    const/4 v11, 0x1

    if-ne v9, v11, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v11, "ContextualPageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadHotseatItemContainer. Process tag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_5

    const/4 v1, 0x0

    const/4 v11, 0x0

    const-string v12, "packageName"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    const-string v12, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    const-string v12, "screen"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    const-string v12, "x"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    const-string v11, "favorite"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v4, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v4, v6, v3, v11, v12}, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v11, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    const/4 v11, 0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :cond_5
    sget-object v11, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    invoke-virtual {p1, v2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_6
    sget-boolean v11, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v11, :cond_4

    const-string v11, "ContextualPageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid tag <"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "> detected while parsing favorites at line "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private moveToFirstAndRemoveAfter(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    const-string v0, "ContextualPageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToFirstAndRemoveAfter, targetIndex :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageManager;->isTopScreenForCP()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/ContextualPageManager;->moveToScreen(ZI)V

    invoke-direct {p0, p2}, Lcom/android/launcher2/ContextualPageManager;->removePage(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToNextAndRemoveAfter(I)V
    .locals 4
    .param p1    # I

    const-string v0, "ContextualPageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToNextAndRemoveAfter, index :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageManager;->isTopScreenForCP()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/ContextualPageManager;->moveToScreen(ZI)V

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v1, Lcom/android/launcher2/ContextualPageManager$6;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/ContextualPageManager$6;-><init>(Lcom/android/launcher2/ContextualPageManager;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToScreen(ZI)V
    .locals 3
    .param p1    # Z
    .param p2    # I

    const-string v0, "ContextualPageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToScreen, animate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->setMaxScrollX()V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_1
.end method

.method private noMoveAndRemoveAfter(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    const-string v0, "ContextualPageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noMoveAndRemoveAfter, index :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/launcher2/ContextualPageManager;->removePage(I)V

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->setLastPageNotify(I)V

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    return-void
.end method

.method private removePage(I)V
    .locals 4
    .param p1    # I

    const-string v1, "ContextualPageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePage, index :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "ContextualPageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePage failed !, index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/ContextualPageManager;->removeWidgetHost(I)V

    iget-object v1, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/launcher2/WorkspacePages;->deletePageAt(ILandroid/content/Context;)Z

    goto :goto_0
.end method

.method private removeWidgetHost(I)V
    .locals 13
    .param p1    # I

    iget-object v10, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v10, v8, Lcom/android/launcher2/Folder;

    if-eqz v10, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    instance-of v10, v5, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v10, :cond_1

    move-object v9, v5

    check-cast v9, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v10, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v10, v9, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v1, v10}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    iget-object v10, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const-string v10, "com.sec.android.app.launcher.prefs"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PrefsForContextualPagePackageName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v9, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PrefsForContextualPageClassName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v9, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PrefsForContextualPagePackageName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v9, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PrefsForContextualPageClassName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v9, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v10, -0x1

    iput v10, v9, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    :cond_1
    iget-object v10, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method private setBadgeCounts(Lcom/android/launcher2/HomeShortcutItem;Ljava/util/Map;)V
    .locals 2
    .param p1    # Lcom/android/launcher2/HomeShortcutItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/HomeShortcutItem;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iput v1, p1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    goto :goto_0
.end method

.method private setLaunchableHotsetItems(I)V
    .locals 12
    .param p1    # I

    iget-object v10, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    new-instance v8, Lcom/android/launcher2/BadgeCache;

    invoke-direct {v8, v0}, Lcom/android/launcher2/BadgeCache;-><init>(Landroid/app/Application;)V

    invoke-virtual {v8}, Lcom/android/launcher2/BadgeCache;->updateBadgeCounts()Ljava/util/Map;

    move-result-object v1

    sget-object v10, Lcom/android/launcher2/ContextualPageManager;->mLaunchableHotseatItemsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/ContextualPageManager;->getHotseatItems(I)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_0

    new-instance v7, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v7, v10}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v11, v10, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v10, v10, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-direct {v2, v11, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const/high16 v11, 0x10200000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v9, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v9}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v10, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v10

    invoke-virtual {v10, v9, v6}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    iget-object v10, v9, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v10, v7, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v10, v9, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v10, v7, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v6, v7, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    const-wide/16 v10, -0x65

    iput-wide v10, v7, Lcom/android/launcher2/HomeItem;->container:J

    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/android/launcher2/HomeItem;->isContextualAwareHotseat:Z

    invoke-direct {p0, v7, v1}, Lcom/android/launcher2/ContextualPageManager;->setBadgeCounts(Lcom/android/launcher2/HomeShortcutItem;Ljava/util/Map;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget-object v10, Lcom/android/launcher2/ContextualPageManager;->mLaunchableHotseatItemsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addContextualPage(I)Z
    .locals 21
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    sget-boolean v17, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v17, :cond_0

    const-string v17, "ContextualPageManager"

    const-string v18, "addContextualPage : Workspace is NULL!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v17

    if-eqz v17, :cond_3

    sget-boolean v17, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v17, :cond_2

    const-string v17, "ContextualPageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Already added - CPType : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    :cond_3
    sget-boolean v17, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v17, :cond_4

    const-string v17, "ContextualPageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addContextualPage : CPType : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->isResumed()Z

    move-result v17

    if-nez v17, :cond_6

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/ContextualPageManager;->mHasPostWork:Z

    const/16 v17, 0x0

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f03005b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setContextualPageType(I)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_7

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_7
    const v17, 0x7f0800d7

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    new-instance v17, Lcom/android/launcher2/ContextualPageManager$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/ContextualPageManager$2;-><init>(Lcom/android/launcher2/ContextualPageManager;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v17, 0x7f0800d9

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    new-instance v17, Lcom/android/launcher2/ContextualPageManager$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/ContextualPageManager$3;-><init>(Lcom/android/launcher2/ContextualPageManager;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v17, 0x7f0800db

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v17, 0x7f0800da

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    packed-switch p1, :pswitch_data_0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/android/launcher2/ContextualPageManager;->displayEmotionalTitleText(Landroid/widget/TextView;I)V

    const/16 v16, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v18

    sub-int v9, v17, v18

    const/4 v6, 0x1

    :goto_3
    move/from16 v0, p1

    if-ge v6, v0, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    const/16 v16, 0x1

    add-int/lit8 v4, v4, 0x1

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :pswitch_0
    const v17, 0x7f0e009e

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_1
    const v17, 0x7f0e009f

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_2
    const v17, 0x7f0e00a2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :pswitch_3
    const v17, 0x7f0e00a1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_9
    if-eqz v16, :cond_d

    add-int v10, v9, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/launcher2/HomeView;->determineEmptyPageMsgVisibility(I)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getLauncherModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel;->bindContextualPageItems(I)V

    const-string v17, "ContextualPageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CP Page Add = Total : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Contexutal : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v17

    if-nez v17, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ContextualPageManager;->isTopScreenForCP()Z

    move-result v17

    if-eqz v17, :cond_f

    add-int v17, v9, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/PagedView;->setLastPageNotify(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/launcher2/ContextualPageManager$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/ContextualPageManager$4;-><init>(Lcom/android/launcher2/ContextualPageManager;I)V

    const-wide/16 v19, 0xc8

    invoke-virtual/range {v17 .. v20}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v17, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mDeskCradleObserver:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v17, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mDeskCradleObserver:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v12, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_b
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0x8

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/launcher2/HomeView;->determineEmptyPageMsgVisibility(I)Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    goto/16 :goto_5

    :cond_e
    const/16 v17, 0x8

    goto :goto_7

    :cond_f
    add-int v17, v9, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/PagedView;->setLastPageNotify(I)V

    :cond_10
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/ContextualPageManager;->moveToScreen(ZI)V

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addPostBindList(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;

    sget-object v0, Lcom/android/launcher2/ContextualPageManager;->mPostBindList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public changeStateTitleText(I)V
    .locals 3
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0800db

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v2, 0x7f0e009e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    const v2, 0x7f0e009f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0e00a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_3
    const v2, 0x7f0e00a1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public checkAndBindHotseatCPItems(I)Z
    .locals 8
    .param p1    # I

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/ContextualPageManager;->getHotseatAwareItems(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    :cond_1
    sget-boolean v5, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v6, "ContextualPageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAndBindHotseatItems - mIcon is null. Item : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", Title : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_2

    const-string v5, "???"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, v3, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget v5, Lcom/android/launcher2/ContextualPageManager;->MAX_AWARE_HOTSEAT_CELL_COUNT:I

    if-lt v1, v5, :cond_5

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/HomeView;->bindHotseatCP(Ljava/util/List;)V

    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public clearPostBindList()V
    .locals 2

    const-string v0, "ContextualPageManager"

    const-string v1, "clearPostBindList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher2/ContextualPageManager;->mPostBindList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public displayEmotionalTitleText(I)V
    .locals 3
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0800da

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher2/ContextualPageManager;->displayEmotionalTitleText(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method public displayEmotionalTitleText(Landroid/widget/TextView;I)V
    .locals 20
    .param p1    # Landroid/widget/TextView;
    .param p2    # I

    const-string v11, ""

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/ContextualPageManager;->getEmotionalTitleText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    const v1, 0x7f0e00a3

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0e00a6

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const v1, 0x7f0e00a7

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const v1, 0x7f0e00a4

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/ContextualPageManager;->currentArtist:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/ContextualPageManager;->currentArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v16, v1, v3

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/ContextualPageManager;->isMusicPlaying:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ContextualPageManager;->currentArtist:Ljava/lang/String;

    aput-object v4, v1, v3

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ContextualPageManager;->currentArtist:Ljava/lang/String;

    aput-object v4, v1, v3

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :pswitch_2
    const-string v10, ""

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v9, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MM"

    invoke-static {v3, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "dd"

    invoke-static {v3, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype=\'vnd.android.cursor.item/contact_event\' AND data2 = 3 AND data1 LIKE \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->setToNow()V

    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    move-object/from16 v0, v19

    iget-wide v5, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v15

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    const v1, 0x7f0e00a8

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    :goto_1
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_5
    if-eqz v7, :cond_6

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    const v1, 0x7f0e00aa

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    goto :goto_1

    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_7

    const v1, 0x7f0e00a9

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v10, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_7
    const v1, 0x7f0e00a5

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    :pswitch_3
    const v1, 0x7f0e00ab

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getContextualPage(I)Lcom/android/launcher2/CellLayout;
    .locals 5
    .param p1    # I

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_0

    const-string v2, "ContextualPageManager"

    const-string v4, "getContextualPage : Workspace is NULL!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public getContextualPageIndex(I)I
    .locals 5
    .param p1    # I

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_1

    const-string v2, "ContextualPageManager"

    const-string v4, "getContextualPageIndex : Workspace is NULL!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v2

    if-eq v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public getContextualPageType(I)I
    .locals 4
    .param p1    # I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_1

    const-string v2, "ContextualPageManager"

    const-string v3, "getContextualPageType : Workspace is NULL!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v1

    goto :goto_0
.end method

.method public getCurCPType()I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v1

    goto :goto_0
.end method

.method public getHasPostWork()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHasPostWork:Z

    return v0
.end method

.method public getHotseatAwareItems(I)Ljava/util/ArrayList;
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher2/ContextualPageManager;->mLaunchableHotseatItemsMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher2/ContextualPageManager;->mLaunchableHotseatItemsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected getHotseatItems(I)Ljava/util/ArrayList;
    .locals 10
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/launcher2/ContextualPageManager;->awareHotseatItemsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez v1, :cond_1

    move v0, v8

    :goto_0
    const/4 v3, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->cpType:I

    if-ne v7, p1, :cond_3

    if-lez v0, :cond_2

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget v9, Lcom/android/launcher2/ContextualPageManager;->MAX_AWARE_HOTSEAT_CELL_COUNT:I

    if-lt v7, v9, :cond_6

    move v4, v5

    :cond_0
    :goto_2
    sget-object v7, Lcom/android/launcher2/ContextualPageManager;->IN_HOTSEAT_POSITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    if-lez v4, :cond_4

    sget v7, Lcom/android/launcher2/ContextualPageManager;->MAX_AWARE_HOTSEAT_CELL_COUNT:I

    if-ge v4, v7, :cond_4

    iget-object v7, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-direct {p0, v4, v1, v7}, Lcom/android/launcher2/ContextualPageManager;->duplicateCheckOfAwareHotseat(ILjava/util/ArrayList;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->screen:I

    if-nez v1, :cond_5

    move v7, v8

    :goto_4
    add-int/2addr v7, v9

    iput v7, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->screen:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget v9, Lcom/android/launcher2/ContextualPageManager;->MAX_AWARE_HOTSEAT_CELL_COUNT:I

    if-lt v7, v9, :cond_3

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_4

    :cond_6
    move v4, v5

    goto :goto_3
.end method

.method public getTotalContextualPageCount()I
    .locals 5

    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    const-string v3, "ContextualPageManager"

    const-string v4, "getTotalContextualPageCount : Workspace is NULL!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initContextualPage(Lcom/android/launcher2/HomeView;)V
    .locals 3
    .param p1    # Lcom/android/launcher2/HomeView;

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/android/launcher2/ContextualPageManager;->CP_DARKEN_AMOUNT:F

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/launcher2/ContextualPageManager;->MAX_AWARE_HOTSEAT_CELL_COUNT:I

    invoke-direct {p0}, Lcom/android/launcher2/ContextualPageManager;->loadHotseatItem()Z

    return-void
.end method

.method isContextualPageHotseat(Landroid/view/View;)Z
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/Hotseat;->mContentCP:Lcom/android/launcher2/CellLayoutHotseat;

    if-ne v5, p1, :cond_4

    move v0, v3

    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    if-ne v5, p1, :cond_5

    move v1, v3

    :goto_3
    if-nez v0, :cond_2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    :cond_2
    move v4, v3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_2

    :cond_5
    move v1, v4

    goto :goto_3
.end method

.method public isCurCP()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageManager;->getCurCPType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTopScreenForCP()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postBindContextualPage()V
    .locals 4

    const-string v2, "ContextualPageManager"

    const-string v3, "postBindContextualPage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/launcher2/ContextualPageManager;->mPostBindList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/ContextualPageManager;->mPostBindList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getContextualPageReceiver()Lcom/android/launcher2/ContextualPageReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher2/ContextualPageReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reconfigurationContextualPageLayout(Lcom/android/launcher2/CellLayout;)V
    .locals 13
    .param p1    # Lcom/android/launcher2/CellLayout;

    iget-object v11, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f0800d7

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const v11, 0x7f0d0124

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v10, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v11, 0x7f0800d8

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v11, 0x7f0d012f

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v11, 0x7f0d0131

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const v11, 0x7f0d0125

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v11, 0x7f0d0126

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v11, 0x7f0800d9

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const v11, 0x7f0d012f

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v11, 0x7f0d0130

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v11, 0x7f0800da

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const v11, 0x7f0d0127

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v11, 0x7f0d0128

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v11, 0x7f0d012d

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v11, 0x7f0d0129

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v11, 0x0

    const v12, 0x7f0d012a

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8, v11, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v11, 0x7f0800db

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const v11, 0x7f0d012b

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v11, 0x7f0d012c

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v11, 0x7f0d012d

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v11, 0x0

    const v12, 0x7f0d012e

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v9, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public reloadAwareHotseatItems()V
    .locals 4

    const-string v2, "ContextualPageManager"

    const-string v3, "awareHotseatItemsReload from CA"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/ContextualPageManager;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher2/HomeView;->onPageSwitch(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public removeAllContextualPage()V
    .locals 6

    iget-object v4, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v4, :cond_1

    const-string v4, "ContextualPageManager"

    const-string v5, "removeContextualPage : Workspace is NULL!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v4, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v5

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/ContextualPageManager;->mDeskCradleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, -0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeContextualPage(I)Z
    .locals 11
    .param p1    # I

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v8, :cond_1

    const-string v8, "ContextualPageManager"

    const-string v10, "removeContextualPage : Workspace is NULL!!"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v9

    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getContextualPageMarker()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v6, v8

    :goto_1
    if-eqz v6, :cond_2

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v8

    sub-int v2, v5, v8

    iget-object v8, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v1

    move v0, v2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v4

    if-ge v1, v2, :cond_5

    invoke-direct {p0, v4}, Lcom/android/launcher2/ContextualPageManager;->removePage(I)V

    :cond_3
    :goto_2
    const/4 v8, 0x3

    if-ne p1, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v8, p0, Lcom/android/launcher2/ContextualPageManager;->mDeskCradleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v8}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    add-int/lit8 v8, v2, 0x1

    if-ne v5, v8, :cond_7

    invoke-direct {p0, v4}, Lcom/android/launcher2/ContextualPageManager;->removePage(I)V

    iget-object v8, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageManager;->isTopScreenForCP()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v10

    invoke-direct {p0, v8, v10}, Lcom/android/launcher2/ContextualPageManager;->moveToScreen(ZI)V

    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageManager;->isTopScreenForCP()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/HomeView;->setDarkenViewIfneed(Z)V

    goto :goto_2

    :cond_6
    move v8, v9

    goto :goto_3

    :cond_7
    if-ne v1, v4, :cond_9

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/launcher2/ContextualPageManager;->moveToNextAndRemoveAfter(I)V

    goto :goto_2

    :pswitch_1
    if-ne v2, v4, :cond_8

    invoke-direct {p0, v4}, Lcom/android/launcher2/ContextualPageManager;->moveToNextAndRemoveAfter(I)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, v0, v4}, Lcom/android/launcher2/ContextualPageManager;->moveToFirstAndRemoveAfter(II)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, v0, v4}, Lcom/android/launcher2/ContextualPageManager;->moveToFirstAndRemoveAfter(II)V

    goto :goto_2

    :cond_9
    if-ge v1, v4, :cond_a

    invoke-direct {p0, v4}, Lcom/android/launcher2/ContextualPageManager;->removePage(I)V

    goto :goto_2

    :cond_a
    invoke-direct {p0, v1, v4}, Lcom/android/launcher2/ContextualPageManager;->noMoveAndRemoveAfter(II)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCurrentArtist(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager;->currentArtist:Ljava/lang/String;

    return-void
.end method

.method public setHasPostWork(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/ContextualPageManager;->mHasPostWork:Z

    return-void
.end method

.method public setIsMusicPlaying(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/ContextualPageManager;->isMusicPlaying:Z

    return-void
.end method

.method public setupContextualAwareHotSeat(Landroid/content/Context;I)V
    .locals 20
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const/4 v3, 0x0

    const/4 v10, 0x0

    const-string v16, "content://com.samsung.android.providers.context.profile/app_used?device_type="

    const/16 v19, -0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.samsung.android.providers.context"

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v19, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    packed-switch p2, :pswitch_data_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v10

    const-string v2, "ContextualPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor rowcount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :cond_0
    const/4 v2, 0x2

    move/from16 v0, v19

    if-lt v0, v2, :cond_8

    const-string v2, "packagename"

    :goto_2
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const/4 v2, 0x2

    move/from16 v0, v19

    if-lt v0, v2, :cond_9

    const-string v2, "classname"

    :goto_3
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v12, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v2, "ContextualPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor package name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ContextualPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor class name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v18, :cond_1

    const-string v2, "com.sec.android.app.launcher"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    const-string v2, "ContextualPageManager"

    const-string v4, "Launcherable pacakge name not fount! or Launcher itself"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/android/launcher2/ContextualPageManager;->MAX_AWARE_HOTSEAT_CELL_COUNT:I

    if-lt v13, v2, :cond_0

    :cond_2
    sget-object v2, Lcom/android/launcher2/ContextualPageManager;->awareHotseatItemsMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher2/ContextualPageManager;->awareHotseatItemsMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher2/ContextualPageManager;->setLaunchableHotsetItems(I)V

    return-void

    :pswitch_0
    const/4 v2, 0x2

    move/from16 v0, v19

    if-lt v0, v2, :cond_4

    const-string v2, "content://com.samsung.android.providers.context.profile/app_used?device_type=5"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_6
    goto/16 :goto_1

    :cond_4
    sget-object v3, Lcom/android/launcher2/ContextualPageManager;->STATUS_SPEN_URI:Landroid/net/Uri;

    goto :goto_6

    :pswitch_1
    const/4 v2, 0x2

    move/from16 v0, v19

    if-lt v0, v2, :cond_5

    const-string v2, "content://com.samsung.android.providers.context.profile/app_used?device_type=0"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_7
    goto/16 :goto_1

    :cond_5
    sget-object v3, Lcom/android/launcher2/ContextualPageManager;->STATUS_EARPHONE_URI:Landroid/net/Uri;

    goto :goto_7

    :pswitch_2
    const/4 v2, 0x2

    move/from16 v0, v19

    if-lt v0, v2, :cond_6

    const-string v2, "content://com.samsung.android.providers.context.profile/app_used?device_type=4"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_8
    goto/16 :goto_1

    :cond_6
    sget-object v3, Lcom/android/launcher2/ContextualPageManager;->STATUS_DOCK_URI:Landroid/net/Uri;

    goto :goto_8

    :pswitch_3
    const/4 v2, 0x2

    move/from16 v0, v19

    if-lt v0, v2, :cond_7

    const-string v2, "content://com.samsung.android.providers.context.profile/app_used?device_type=6"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_9
    goto/16 :goto_1

    :cond_7
    sget-object v3, Lcom/android/launcher2/ContextualPageManager;->STATUS_ROAMING_URI:Landroid/net/Uri;

    goto :goto_9

    :cond_8
    const-string v2, "package_name"

    goto/16 :goto_2

    :cond_9
    const-string v2, "class_name"

    goto/16 :goto_3

    :cond_a
    new-instance v11, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-direct {v11, v0, v9, v13, v1}, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_b
    const-string v2, "ContextualPageManager"

    const-string v4, "[OOPS] Fail to get cursor because DB empty. "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_0
    move-exception v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateBadgeCounts()V
    .locals 14

    iget-object v11, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v11, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    new-instance v10, Lcom/android/launcher2/BadgeCache;

    invoke-direct {v10, v1}, Lcom/android/launcher2/BadgeCache;-><init>(Landroid/app/Application;)V

    invoke-virtual {v10}, Lcom/android/launcher2/BadgeCache;->updateBadgeCounts()Ljava/util/Map;

    move-result-object v2

    iget-object v11, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v0

    const/4 v4, 0x1

    :goto_0
    const/4 v11, 0x4

    if-gt v4, v11, :cond_0

    sget-object v11, Lcom/android/launcher2/ContextualPageManager;->mLaunchableHotseatItemsMap:Ljava/util/HashMap;

    if-eqz v11, :cond_2

    sget-object v11, Lcom/android/launcher2/ContextualPageManager;->mLaunchableHotseatItemsMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_3

    const-string v11, "ContextualPageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateBadgeCounts : hotseatItems == null,  CPType : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeShortcutItem;

    sget v11, Lcom/android/launcher2/ContextualPageManager;->MAX_AWARE_HOTSEAT_CELL_COUNT:I

    if-ge v9, v11, :cond_2

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v8, v2}, Lcom/android/launcher2/ContextualPageManager;->setBadgeCounts(Lcom/android/launcher2/HomeShortcutItem;Ljava/util/Map;)V

    if-ne v4, v0, :cond_4

    :try_start_0
    iget-object v11, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/Hotseat;->mContentCP:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppIconView;

    check-cast v11, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget v11, v8, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    iput v11, v3, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    :cond_5
    iget-object v11, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/Hotseat;->mContentCP:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppIconView;

    check-cast v11, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v11}, Lcom/android/launcher2/AppIconView;->showBadge()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    sget-boolean v11, Lcom/android/launcher2/ContextualPageManager;->DEBUGGABLE:Z

    if-eqz v11, :cond_4

    const-string v11, "ContextualPageManager"

    const-string v12, "The problem occurred while updating the badgecount in contextual page hotseat."

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
