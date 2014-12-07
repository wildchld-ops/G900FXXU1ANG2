.class Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;
.super Lcom/google/android/finsky/utils/Users$UserManagerFacade;
.source "Users.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/Users;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserManagerSystemFacade"
.end annotation


# instance fields
.field private mGetUsers:Ljava/lang/reflect/Method;

.field private mIsLimited:Ljava/lang/reflect/Method;

.field private mSupportsMultipleUsers:Ljava/lang/reflect/Method;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v7}, Lcom/google/android/finsky/utils/Users$UserManagerFacade;-><init>(Lcom/google/android/finsky/utils/Users$1;)V

    const-string v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mUserManager:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v0, v6, [Ljava/lang/Class;

    const-string v4, "supportsMultipleUsers"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v1, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mSupportsMultipleUsers:Ljava/lang/reflect/Method;

    :goto_0
    const-string v4, "getUsers"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v1, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mGetUsers:Ljava/lang/reflect/Method;

    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_0

    const-string v4, "isLinkedUser"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v1, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mIsLimited:Ljava/lang/reflect/Method;

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v4, "Return type %s is not correct for supportsMultipleUsers"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mSupportsMultipleUsers:Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_2
    const-string v4, "Return type %s is not correct for getUsers"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mGetUsers:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_3
    const-string v4, "Return type %s is not correct for isLimited"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mIsLimited:Ljava/lang/reflect/Method;

    goto :goto_2
.end method


# virtual methods
.method public hasMultipleUsers()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mGetUsers:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    invoke-super {p0}, Lcom/google/android/finsky/utils/Users$UserManagerFacade;->hasMultipleUsers()Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mGetUsers:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mUserManager:Landroid/os/UserManager;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-le v3, v4, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_1
    move v3, v5

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public isLimitedUser()Z
    .locals 4

    iget-object v1, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mIsLimited:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/google/android/finsky/utils/Users$UserManagerFacade;->isLimitedUser()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mIsLimited:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public supportsMultipleUsers()Z
    .locals 4

    iget-object v1, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mSupportsMultipleUsers:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/google/android/finsky/utils/Users$UserManagerFacade;->supportsMultipleUsers()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mSupportsMultipleUsers:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/android/finsky/utils/Users$UserManagerSystemFacade;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method
