.class public Lcom/sec/android/app/camera/ShareShot$UserWrapper;
.super Ljava/lang/Object;
.source "ShareShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ShareShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserWrapper"
.end annotation


# instance fields
.field private mInit:Z

.field public mTimeout:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUserCountCheck:I

.field public mUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/ShareShot;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/ShareShot;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mTimeout:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mInit:Z

    iput v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserCountCheck:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mTimeout:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mTimeout:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/ShareShot;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mTimeout:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mInit:Z

    iput v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserCountCheck:I

    iput-object p2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mInit:Z

    return-void
.end method

.method private compareListComponent(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->contain(Lcom/samsung/shareshot/User;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private contain(Lcom/samsung/shareshot/User;Ljava/util/List;)Z
    .locals 4
    .param p1    # Lcom/samsung/shareshot/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/shareshot/User;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    invoke-virtual {v1, p1}, Lcom/samsung/shareshot/User;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getHeadImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getHeadImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getHeadImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getHeadImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeUser(Lcom/samsung/shareshot/User;)V
    .locals 5
    .param p1    # Lcom/samsung/shareshot/User;

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v3, v2, Lcom/sec/android/app/camera/ShareShot;->sobject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "@"

    const-string v4, " user changed so refresh view"

    invoke-static {v2, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->mActiveUserHandler:Landroid/os/Handler;

    const/16 v4, 0xcd

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v3

    :goto_0
    return-void

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public destory()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, v1, Lcom/sec/android/app/camera/ShareShot;->sobject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mInit:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v1, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v1}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mTimeout:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getUserCount()I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v0, Lcom/sec/android/app/camera/ShareShot;->sobject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v0, "ShareShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUserFromList(I)Lcom/samsung/shareshot/User;
    .locals 5
    .param p1    # I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v3, v3, Lcom/sec/android/app/camera/ShareShot;->sobject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    monitor-exit v3

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    :cond_0
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;
    .locals 6
    .param p1    # Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v5, v4, Lcom/sec/android/app/camera/ShareShot;->sobject:Ljava/lang/Object;

    monitor-enter v5

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v5

    move-object v4, v3

    :goto_0
    return-object v4

    :cond_1
    monitor-exit v5

    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public selectUser(Lcom/samsung/shareshot/User;Z)V
    .locals 3
    .param p1    # Lcom/samsung/shareshot/User;
    .param p2    # Z

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, v1, Lcom/sec/android/app/camera/ShareShot;->sobject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->onSelected()V

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->onUnSelected()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUserList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;)V"
        }
    .end annotation

    iget-boolean v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mInit:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mInit:Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    if-nez v2, :cond_1

    const-string v2, "@"

    const-string v3, " mUserList is null "

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/shareshot/User;

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mTimeout:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/shareshot/User;->isUserSelected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v3, v2, Lcom/sec/android/app/camera/ShareShot;->sobject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->compareListComponent(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, "@"

    const-string v4, " mUserlsit != list so refresh view"

    invoke-static {v2, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->mActiveUserHandler:Landroid/os/Handler;

    const/16 v4, 0xcd

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserCountCheck:I

    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserCountCheck:I

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v3, v3, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setDeviceName(Lcom/samsung/shareshot/IShareShotService;)V

    return-void

    :cond_6
    :try_start_1
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->mUserList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->mActiveUserHandler:Landroid/os/Handler;

    const/16 v4, 0xcd

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
