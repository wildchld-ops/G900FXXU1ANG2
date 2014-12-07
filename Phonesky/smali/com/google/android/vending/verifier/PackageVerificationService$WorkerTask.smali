.class Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;
.super Landroid/os/AsyncTask;
.source "PackageVerificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/PackageVerificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

.field final synthetic this$0:Lcom/google/android/vending/verifier/PackageVerificationService;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    .locals 0
    .param p2    # Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iput-object p1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iput-object p1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 13
    .param p1    # [Ljava/lang/Void;

    iget-object v9, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    const/4 v10, 0x1

    iput v10, v9, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mResult:I

    iget-object v9, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    # invokes: Lcom/google/android/vending/verifier/PackageVerificationService;->getPackageInfo(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)Z
    invoke-static {v9, v10}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$000(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    iget-object v9, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v9, v9, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingUid:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    iget-object v9, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v9, v9, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingUid:I

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iput-object v6, v9, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingPackageNames:[Ljava/lang/String;

    if-eqz v6, :cond_2

    array-length v9, v6

    if-lez v9, :cond_2

    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v6, v9

    const/16 v10, 0x40

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v9, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    # invokes: Lcom/google/android/vending/verifier/PackageVerificationService;->getRawSignatures([Landroid/content/pm/Signature;)[[B
    invoke-static {v10}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$100([Landroid/content/pm/Signature;)[[B

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingSignatures:[[B

    iget-object v9, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v10, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v10, v10, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingSignatures:[[B

    iget-object v11, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-object v11, v11, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->mSignatures:[[B

    # invokes: Lcom/google/android/vending/verifier/PackageVerificationService;->rawSignaturesMatch([[B[[B)Z
    invoke-static {v9, v10, v11}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$200(Lcom/google/android/vending/verifier/PackageVerificationService;[[B[[B)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    const-string v9, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v8, v9, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const-string v9, "Skipping verification for id=%d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v12, v12, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v9, "Could not retrieve signatures for package %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-object v12, v6, v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    # invokes: Lcom/google/android/vending/verifier/PackageVerificationService;->resolveHosts(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    invoke-static {v9}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$300(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_0

    :cond_3
    iget-object v9, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->originatingPackageNames:[Ljava/lang/String;

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget-object v1, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedAntiMalwareConsent:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    # invokes: Lcom/google/android/vending/verifier/PackageVerificationService;->sendVerificationRequest(Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$400(Lcom/google/android/vending/verifier/PackageVerificationService;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget-boolean v0, v0, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->fromVerificationActivity:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v1, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    const/4 v2, 0x1

    # invokes: Lcom/google/android/vending/verifier/PackageVerificationService;->extendTimeout(II)V
    invoke-static {v0, v1, v2}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$500(Lcom/google/android/vending/verifier/PackageVerificationService;II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    iget v1, v1, Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;->id:I

    invoke-static {v0, v1}, Lcom/google/android/vending/verifier/ConsentDialog;->show(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->this$0:Lcom/google/android/vending/verifier/PackageVerificationService;

    iget-object v1, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    # invokes: Lcom/google/android/vending/verifier/PackageVerificationService;->reportAndCleanup(Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/vending/verifier/PackageVerificationService;->access$600(Lcom/google/android/vending/verifier/PackageVerificationService;Landroid/content/Context;Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    const-string v0, "Verification Requested for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/vending/verifier/PackageVerificationService$WorkerTask;->mState:Lcom/google/android/vending/verifier/PackageVerificationService$VerificationState;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
