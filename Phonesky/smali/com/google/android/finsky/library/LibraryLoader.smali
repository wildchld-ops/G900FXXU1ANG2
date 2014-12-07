.class public Lcom/google/android/finsky/library/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/library/LibraryLoader$State;
    }
.end annotation


# instance fields
.field private final mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mLoadingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationHandler:Landroid/os/Handler;

.field private final mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

.field private mState:Lcom/google/android/finsky/library/LibraryLoader$State;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/library/SQLiteLibrary;Lcom/google/android/finsky/library/AccountLibrary;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryLoader;->mLoadingCallbacks:Ljava/util/List;

    sget-object v0, Lcom/google/android/finsky/library/LibraryLoader$State;->UNINITIALIZED:Lcom/google/android/finsky/library/LibraryLoader$State;

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryLoader;->mState:Lcom/google/android/finsky/library/LibraryLoader$State;

    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryLoader;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    iput-object p4, p0, Lcom/google/android/finsky/library/LibraryLoader;->mBackgroundHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/finsky/library/LibraryLoader;->mNotificationHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public declared-synchronized load(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryLoader;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryLoader;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/library/LibraryLoader$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/library/LibraryLoader$1;-><init>(Lcom/google/android/finsky/library/LibraryLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method loadBlocking()V
    .locals 13

    iget-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mState:Lcom/google/android/finsky/library/LibraryLoader$State;

    sget-object v12, Lcom/google/android/finsky/library/LibraryLoader$State;->UNINITIALIZED:Lcom/google/android/finsky/library/LibraryLoader$State;

    if-ne v11, v12, :cond_4

    iget-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v11}, Lcom/google/android/finsky/library/AccountLibrary;->disableListeners()V

    iget-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    invoke-virtual {v11}, Lcom/google/android/finsky/library/SQLiteLibrary;->reopen()V

    iget-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v11}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v11

    iget-object v0, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    invoke-virtual {v11}, Lcom/google/android/finsky/library/SQLiteLibrary;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/finsky/library/LibraryEntry;

    invoke-virtual {v7}, Lcom/google/android/finsky/library/LibraryEntry;->getAccountName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v11, v7}, Lcom/google/android/finsky/library/AccountLibrary;->add(Lcom/google/android/finsky/library/LibraryEntry;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_IDS:[Ljava/lang/String;

    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v8, v1, v5

    invoke-static {v8}, Lcom/google/android/finsky/utils/FinskyPreferences;->getLibraryServerToken(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    const/4 v11, 0x0

    invoke-static {v4, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    :goto_2
    iget-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v11, v8, v10}, Lcom/google/android/finsky/library/AccountLibrary;->setServerToken(Ljava/lang/String;[B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    sget-object v11, Lcom/google/android/finsky/utils/FinskyPreferences;->autoAcquireTags:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v11, v0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/Utils;->commaUnpackStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v11, v2}, Lcom/google/android/finsky/library/AccountLibrary;->setAutoAcquireTags([Ljava/lang/String;)V

    sget-object v11, Lcom/google/android/finsky/library/LibraryLoader$State;->LOADED:Lcom/google/android/finsky/library/LibraryLoader$State;

    iput-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mState:Lcom/google/android/finsky/library/LibraryLoader$State;

    iget-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    invoke-virtual {v11}, Lcom/google/android/finsky/library/SQLiteLibrary;->close()V

    iget-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v11}, Lcom/google/android/finsky/library/AccountLibrary;->enableListeners()V

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Runnable;

    iget-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    :cond_5
    :try_start_1
    iget-object v11, p0, Lcom/google/android/finsky/library/LibraryLoader;->mLoadingCallbacks:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
