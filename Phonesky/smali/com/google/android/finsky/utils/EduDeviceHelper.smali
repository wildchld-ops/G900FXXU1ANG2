.class public Lcom/google/android/finsky/utils/EduDeviceHelper;
.super Ljava/lang/Object;
.source "EduDeviceHelper.java"


# static fields
.field private static sIsEduDevice:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/utils/EduDeviceHelper;->sIsEduDevice:Ljava/lang/Boolean;

    return-void
.end method

.method public static isEduDevice()Z
    .locals 9

    const/4 v4, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v3, v5, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    sget-object v3, Lcom/google/android/finsky/utils/EduDeviceHelper;->sIsEduDevice:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    const-string v5, "device_policy"

    invoke-virtual {v3, v5}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    :try_start_0
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    const-string v5, "isDeviceOwnerApp"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/finsky/config/G;->eduDevicePolicyApp:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    sput-object v3, Lcom/google/android/finsky/utils/EduDeviceHelper;->sIsEduDevice:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_1
    sget-object v3, Lcom/google/android/finsky/utils/EduDeviceHelper;->sIsEduDevice:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "No method named isDeviceOwnerApp exists."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/google/android/finsky/utils/EduDeviceHelper;->sIsEduDevice:Ljava/lang/Boolean;

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "Unable to invoke isDeviceOwnerApp"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/google/android/finsky/utils/EduDeviceHelper;->sIsEduDevice:Ljava/lang/Boolean;

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v3, "Unable to access API isDeviceOwnerApp"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/google/android/finsky/utils/EduDeviceHelper;->sIsEduDevice:Ljava/lang/Boolean;

    goto :goto_1
.end method
