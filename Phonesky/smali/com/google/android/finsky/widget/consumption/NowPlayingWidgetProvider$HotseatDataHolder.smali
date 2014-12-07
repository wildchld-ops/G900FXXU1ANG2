.class public Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;
.super Ljava/lang/Object;
.source "NowPlayingWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HotseatDataHolder"
.end annotation


# instance fields
.field private mHasDismissedHotseat:Z

.field private mIsBooksChecked:Z

.field private mIsMagazinesChecked:Z

.field private mIsMoviesChecked:Z

.field private mIsMusicChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;)Z
    .locals 1
    .param p0    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;

    iget-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mHasDismissedHotseat:Z

    return v0
.end method

.method private static flushData(ILcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;)V
    .locals 5
    .param p0    # I
    .param p1    # Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "d,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mHasDismissedHotseat:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ma,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsMagazinesChecked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&mo,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsMoviesChecked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&mu,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsMusicChecked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&b,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsBooksChecked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->libraryWidgetData:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(I)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    const-string v1, "Writing data for widget=%d data=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static loadDataFromDisk(I)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;
    .locals 12
    .param p0    # I

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v2, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;

    invoke-direct {v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;-><init>()V

    sget-object v8, Lcom/google/android/finsky/utils/FinskyPreferences;->libraryWidgetData:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {v8, p0}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(I)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    return-object v2

    :cond_1
    const-string v8, "&"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    array-length v8, v4

    if-ge v0, v8, :cond_0

    aget-object v8, v4, v0

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v8, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    aget-object v8, v3, v10

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    aget-object v8, v3, v11

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget-object v1, v3, v10

    aget-object v8, v3, v11

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "d"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iput-boolean v7, v2, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mHasDismissedHotseat:Z

    goto :goto_1

    :cond_4
    const-string v8, "mu"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iput-boolean v7, v2, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsMusicChecked:Z

    goto :goto_1

    :cond_5
    const-string v8, "ma"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iput-boolean v7, v2, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsMagazinesChecked:Z

    goto :goto_1

    :cond_6
    const-string v8, "mo"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iput-boolean v7, v2, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsMoviesChecked:Z

    goto :goto_1

    :cond_7
    const-string v8, "b"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iput-boolean v7, v2, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsBooksChecked:Z

    goto :goto_1

    :cond_8
    const-string v8, "Malformed data detected in widget pref, ignoring."

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static writeBackendChecked(II)V
    .locals 2
    .param p0    # I
    .param p1    # I

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->loadDataFromDisk(I)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-static {p0, v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->flushData(ILcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;)V

    return-void

    :pswitch_1
    iput-boolean v1, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsMusicChecked:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v1, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsMagazinesChecked:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v1, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsMoviesChecked:Z

    goto :goto_0

    :pswitch_4
    iput-boolean v1, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsBooksChecked:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static writeHotseatDismissed(I)V
    .locals 2
    .param p0    # I

    invoke-static {p0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->loadDataFromDisk(I)Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mHasDismissedHotseat:Z

    invoke-static {p0, v0}, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->flushData(ILcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;)V

    return-void
.end method


# virtual methods
.method public isBackendChecked(I)Z
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsMusicChecked:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsMagazinesChecked:Z

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsMoviesChecked:Z

    goto :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingWidgetProvider$HotseatDataHolder;->mIsBooksChecked:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
