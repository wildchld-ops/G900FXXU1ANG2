.class Lcom/google/android/finsky/services/LicensingService$1;
.super Lcom/android/vending/licensing/ILicensingService$Stub;
.source "LicensingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/services/LicensingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/services/LicensingService;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/services/LicensingService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/services/LicensingService$1;->this$0:Lcom/google/android/finsky/services/LicensingService;

    invoke-direct {p0}, Lcom/android/vending/licensing/ILicensingService$Stub;-><init>()V

    return-void
.end method

.method private checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    new-instance v0, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;

    invoke-direct {v0}, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;-><init>()V

    iput-object p3, v0, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;->packageName:Ljava/lang/String;

    iput-boolean v1, v0, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;->hasPackageName:Z

    iput p5, v0, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;->versionCode:I

    iput-boolean v1, v0, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;->hasVersionCode:Z

    iput-wide p1, v0, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;->nonce:J

    iput-boolean v1, v0, Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;->hasNonce:Z

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/services/LicensingService$1$1;

    invoke-direct {v2, p0, p4}, Lcom/google/android/finsky/services/LicensingService$1$1;-><init>(Lcom/google/android/finsky/services/LicensingService$1;Lcom/android/vending/licensing/ILicenseResultListener;)V

    new-instance v3, Lcom/google/android/finsky/services/LicensingService$1$2;

    invoke-direct {v3, p0, p4}, Lcom/google/android/finsky/services/LicensingService$1$2;-><init>(Lcom/google/android/finsky/services/LicensingService$1;Lcom/android/vending/licensing/ILicenseResultListener;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/vending/remoting/api/VendingApi;->checkLicense(Lcom/google/android/finsky/protos/VendingProtos$CheckLicenseRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;)V
    .locals 23

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/services/LicensingService$1;->this$0:Lcom/google/android/finsky/services/LicensingService;

    invoke-virtual {v2}, Lcom/google/android/finsky/services/LicensingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Lcom/google/android/finsky/services/LicensingService$1;->getCallingUid()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/16 v2, 0x103

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    # invokes: Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/finsky/services/LicensingService;->access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, v22

    iget v7, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/appstate/AppStates;->blockingLoad()V

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v16

    if-nez v16, :cond_1

    const-string v2, "Unexpected null appState for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x102

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    # invokes: Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/finsky/services/LicensingService;->access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v18

    const/16 v2, 0x102

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    # invokes: Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/finsky/services/LicensingService;->access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v2, :cond_2

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/finsky/services/LicensingService$1;->checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/finsky/library/Libraries;->blockingLoad()V

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v2, v2, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iget-object v15, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move v14, v7

    invoke-direct/range {v9 .. v15}, Lcom/google/android/finsky/services/LicensingService$1;->checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/finsky/services/LicensingService$1;->this$0:Lcom/google/android/finsky/services/LicensingService;

    invoke-static {v2}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    iget-object v15, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move v14, v7

    invoke-direct/range {v9 .. v15}, Lcom/google/android/finsky/services/LicensingService$1;->checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    # invokes: Lcom/google/android/finsky/services/LicensingService;->notifyListener(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/finsky/services/LicensingService;->access$000(Lcom/android/vending/licensing/ILicenseResultListener;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
