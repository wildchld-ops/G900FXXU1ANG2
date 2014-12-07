.class final Lcom/google/android/finsky/activities/GaiaRecoveryHelper$1;
.super Landroid/os/AsyncTask;
.source "GaiaRecoveryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->prefetchAndCacheGaiaAuthRecoveryIntent(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    aget-object v1, p1, v4

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "GooglePlayServices is not available."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v3

    :cond_0
    # getter for: Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sCurrentAccountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->access$000()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getRecoveryIfSuggested(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    move-object v3, v2

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/GaiaRecoveryHelper$1;->doInBackground([Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/app/PendingIntent;)V
    .locals 0

    # setter for: Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->sGaiaAuthIntent:Landroid/app/PendingIntent;
    invoke-static {p1}, Lcom/google/android/finsky/activities/GaiaRecoveryHelper;->access$102(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/GaiaRecoveryHelper$1;->onPostExecute(Landroid/app/PendingIntent;)V

    return-void
.end method
