.class public Lcom/google/android/finsky/activities/DebugActivity;
.super Landroid/preference/PreferenceActivity;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;,
        Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;,
        Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;
    }
.end annotation


# static fields
.field private static final ORIGINAL_DFE_URL:Ljava/lang/String;

.field private static final ORIGINAL_VENDING_API_URL:Ljava/lang/String;


# instance fields
.field private mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

.field private final mCarrierHelper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper",
            "<",
            "Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnvironmentHelper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper",
            "<",
            "Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/DebugActivity;->ORIGINAL_DFE_URL:Ljava/lang/String;

    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-string v1, "api/ApiRequest"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/DebugActivity;->ORIGINAL_VENDING_API_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/google/android/finsky/activities/FakeNavigationManager;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/FakeNavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    new-instance v0, Lcom/google/android/finsky/activities/DebugActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/DebugActivity$3;-><init>(Lcom/google/android/finsky/activities/DebugActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity;->mCarrierHelper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;

    new-instance v0, Lcom/google/android/finsky/activities/DebugActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/DebugActivity$4;-><init>(Lcom/google/android/finsky/activities/DebugActivity;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity;->mEnvironmentHelper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DebugActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->clearCacheAndQuit()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/DebugActivity;Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity;->selectCarrier(Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/finsky/activities/DebugActivity;->ORIGINAL_DFE_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/DebugActivity;Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity;->selectEnvironment(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V

    return-void
.end method

.method private clearCacheAndQuit()V
    .locals 2

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/DebugActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DebugActivity$2;-><init>(Lcom/google/android/finsky/activities/DebugActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->clearCacheAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private exportDatabase(Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/DebugActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v10, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    :cond_0
    :goto_0
    if-nez v7, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to export "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :catch_0
    move-exception v6

    const-string v1, "Unable to export: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getOptionsFromCsv(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper",
            "<TT;>;)I"
        }
    .end annotation

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;->fromStringList([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v11, "Default"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    new-instance v2, Ljava/io/File;

    new-instance v11, Ljava/io/File;

    const-string v12, "Download"

    invoke-direct {v11, v4, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-direct {v2, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v11, "#"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    aget-object v8, v5, v11

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "Skipping an item from csv without a name"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v9, v10

    :goto_1
    :try_start_2
    const-string v11, "Unable to build selector: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v11, "Unable to build selector."

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    if-eqz v9, :cond_2

    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    return v1

    :cond_3
    :try_start_4
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;->fromStringList([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;->isSelected(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v11

    add-int/lit8 v1, v11, -0x1

    goto :goto_0

    :cond_4
    if-eqz v10, :cond_6

    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v9, v10

    goto :goto_2

    :catch_1
    move-exception v11

    move-object v9, v10

    goto :goto_2

    :catchall_0
    move-exception v11

    :goto_3
    if-eqz v9, :cond_5

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_4
    throw v11

    :catch_2
    move-exception v11

    goto :goto_2

    :catch_3
    move-exception v12

    goto :goto_4

    :catchall_1
    move-exception v11

    move-object v9, v10

    goto :goto_3

    :catch_4
    move-exception v3

    goto :goto_1

    :cond_6
    move-object v9, v10

    goto :goto_2
.end method

.method private override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/config/GservicesValue",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.gservices.intent.action.GSERVICES_OVERRIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/finsky/config/GservicesValue;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DebugActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private selectCarrier(Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)V
    .locals 2

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->ipCountryOverride:Lcom/google/android/finsky/config/GservicesValue;

    iget-object v1, p1, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;->countryCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->mccMncOverride:Lcom/google/android/finsky/config/GservicesValue;

    iget-object v1, p1, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;->simCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V

    return-void
.end method

.method private selectEnvironment(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V
    .locals 7

    const/4 v4, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.google.gservices.intent.action.GSERVICES_OVERRIDE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->dfeBaseUrl:Ljava/lang/String;

    if-nez v5, :cond_1

    move-object v2, v4

    :goto_0
    iget-object v5, p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->vendingBaseUrl:Ljava/lang/String;

    if-nez v5, :cond_2

    move-object v3, v4

    :goto_1
    iget-object v0, p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->escrowUrl:Ljava/lang/String;

    :cond_0
    const-string v4, "url:finsky_dfe_url"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "url:vending_machine_ssl_url"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "url:licensing_url"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/google/android/finsky/config/G;->checkoutEscrowUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/GservicesValue;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/google/android/finsky/activities/DebugActivity;->ORIGINAL_DFE_URL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rewrite "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->dfeBaseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/google/android/finsky/activities/DebugActivity;->ORIGINAL_VENDING_API_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rewrite "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;->vendingBaseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private setupActionBar()V
    .locals 3

    invoke-static {p0}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->getInstance(Landroid/app/Activity;)Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DebugActivity;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lcom/google/android/finsky/layout/CustomActionBar;->initialize(Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/app/Activity;Lcom/google/android/finsky/layout/play/PlayDrawerLayout;)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateCurrentBackendId(I)V

    iget-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity;->mActionBar:Lcom/google/android/finsky/layout/CustomActionBar;

    const v1, 0x7f0901f4

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/layout/CustomActionBar;->updateBreadcrumb(Ljava/lang/String;)V

    return-void
.end method

.method private setupFakeItemRater()V
    .locals 2

    const-string v1, "fake_item_rater"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->internalFakeItemRaterEnabled:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private setupImageDebugging()V
    .locals 2

    const-string v1, "image_debugging"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/google/android/finsky/config/G;->debugImageSizes:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private setupPrexDisabledCheckbox()V
    .locals 2

    const-string v1, "disable_personalization"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiConfig;->prexDisabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private setupShowStagingMerchData()V
    .locals 2

    const-string v1, "show_staging_data"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiConfig;->showStagingData:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private setupSkipDfeCache()V
    .locals 2

    const-string v1, "skip_all_caches"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    sget-object v1, Lcom/google/android/finsky/api/DfeApiConfig;->skipAllCaches:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method private setupVolleyLogging()V
    .locals 3

    const-string v1, "verbose_volley_logging"

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const-string v1, "Volley"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public buildSelectCountryDialog()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity;->mCarrierHelper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;

    const-string v1, "carriers.csv"

    const-string v2, "Switching country..."

    const v3, 0x7f09037a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DebugActivity;->buildSelectorFromCsv(Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public buildSelectEnvironmentDialog()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/finsky/activities/DebugActivity;->mEnvironmentHelper:Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;

    const-string v1, "marketenvs.csv"

    const-string v2, "Switching environment..."

    const v3, 0x7f090379

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DebugActivity;->buildSelectorFromCsv(Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public buildSelectorFromCsv(Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, p2, v3, v5, p1}, Lcom/google/android/finsky/activities/DebugActivity;->getOptionsFromCsv(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;)I

    move-result v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-instance v6, Lcom/google/android/finsky/activities/DebugActivity$1;

    invoke-direct {v6, p0, p3, p1, v3}, Lcom/google/android/finsky/activities/DebugActivity$1;-><init>(Lcom/google/android/finsky/activities/DebugActivity;Ljava/lang/String;Lcom/google/android/finsky/activities/DebugActivity$ICsvSelectorHelper;Ljava/util/List;)V

    invoke-virtual {v2, v4, v1, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x7

    invoke-static {}, Lcom/google/android/finsky/layout/CustomActionBarFactory;->shouldUseSystemActionBar()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DebugActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x7f040000

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    :cond_0
    sget-object v1, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DebugActivity;->finish()V

    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/DebugActivity;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->setupImageDebugging()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->setupSkipDfeCache()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->setupShowStagingMerchData()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->setupPrexDisabledCheckbox()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->setupVolleyLogging()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->setupFakeItemRater()V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->setupActionBar()V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DebugActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DebugActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_debugging"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v5, Lcom/google/android/finsky/config/G;->debugImageSizes:Lcom/google/android/finsky/config/GservicesValue;

    sget-object v2, Lcom/google/android/finsky/config/G;->debugImageSizes:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/google/android/finsky/activities/DebugActivity;->override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V

    :goto_1
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    const-string v2, "skip_all_caches"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v5, Lcom/google/android/finsky/api/DfeApiConfig;->skipAllCaches:Lcom/google/android/finsky/config/GservicesValue;

    sget-object v2, Lcom/google/android/finsky/api/DfeApiConfig;->skipAllCaches:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/google/android/finsky/activities/DebugActivity;->override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V

    :cond_2
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    const-string v2, "environments"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DebugActivity;->buildSelectEnvironmentDialog()V

    goto :goto_1

    :cond_5
    const-string v2, "clear_cache"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->clearCacheAndQuit()V

    goto :goto_1

    :cond_6
    const-string v2, "show_staging_data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v5, Lcom/google/android/finsky/api/DfeApiConfig;->showStagingData:Lcom/google/android/finsky/config/GservicesValue;

    sget-object v2, Lcom/google/android/finsky/api/DfeApiConfig;->showStagingData:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    move v4, v3

    :cond_7
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/google/android/finsky/activities/DebugActivity;->override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->clearCacheAndQuit()V

    goto :goto_1

    :cond_8
    const-string v2, "disable_personalization"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v5, Lcom/google/android/finsky/api/DfeApiConfig;->prexDisabled:Lcom/google/android/finsky/config/GservicesValue;

    sget-object v2, Lcom/google/android/finsky/api/DfeApiConfig;->prexDisabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    move v4, v3

    :cond_9
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lcom/google/android/finsky/activities/DebugActivity;->override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->clearCacheAndQuit()V

    goto/16 :goto_1

    :cond_a
    const-string v2, "reset_all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/google/android/finsky/config/G;->debugImageSizes:Lcom/google/android/finsky/config/GservicesValue;

    const-string v4, "false"

    invoke-direct {p0, v2, v4}, Lcom/google/android/finsky/activities/DebugActivity;->override(Lcom/google/android/finsky/config/GservicesValue;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;

    invoke-direct {v2, v5, v5, v5}, Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/DebugActivity;->selectEnvironment(Lcom/google/android/finsky/activities/DebugActivity$EnvironmentOverride;)V

    new-instance v2, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;

    invoke-direct {v2, v5, v5, v5}, Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/DebugActivity;->selectCarrier(Lcom/google/android/finsky/activities/DebugActivity$CarrierOverride;)V

    invoke-direct {p0}, Lcom/google/android/finsky/activities/DebugActivity;->clearCacheAndQuit()V

    goto/16 :goto_1

    :cond_b
    const-string v2, "country"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DebugActivity;->buildSelectCountryDialog()V

    goto/16 :goto_1

    :cond_c
    const-string v2, "export_library"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "localappstate.db"

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/DebugActivity;->exportDatabase(Ljava/lang/String;)V

    const-string v2, "library.db"

    invoke-direct {p0, v2}, Lcom/google/android/finsky/activities/DebugActivity;->exportDatabase(Ljava/lang/String;)V

    const-string v2, "Finished database exports"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_d
    const-string v2, "dump_library_state"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "FinskyLibrary"

    const-string v5, "------------ LIBRARY DUMP BEGIN"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/library/Libraries;->dumpState()V

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/finsky/library/LibraryReplicators;->dumpState()V

    const-string v2, "FinskyLibrary"

    const-string v5, "------------ LIBRARY DUMP END"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Library state dumped to logcat."

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_e
    const-string v2, "fake_item_rater"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->internalFakeItemRaterEnabled:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->internalFakeItemRaterEnabled:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    if-nez v0, :cond_f

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_f
    move v3, v4

    goto :goto_4
.end method
