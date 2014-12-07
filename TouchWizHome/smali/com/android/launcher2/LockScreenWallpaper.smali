.class public Lcom/android/launcher2/LockScreenWallpaper;
.super Lcom/android/internal/app/AlertActivity;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LockScreenWallpaper$ItemLongClickListener;,
        Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;,
        Lcom/android/launcher2/LockScreenWallpaper$ViewHolder;,
        Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;
    }
.end annotation


# static fields
.field private static final GALLERY:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static final LIVE_WALLPAPERS:Ljava/lang/String; = "com.android.wallpaper.livepicker"

.field static final MODE_BOTH_WALLPAPER:I = 0x2

.field static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final TRAVEL_WALLPAPER:Ljava/lang/String; = "com.samsung.android.service.travel"

.field private static final WALLPAPER_GALLERY:Ljava/lang/String; = "com.sec.android.app.wallpaperchooser"

.field static final WALLPAPER_MODE:Ljava/lang/String; = "SET_WALLPAPER_MODE"


# instance fields
.field private ItemName:[Ljava/lang/String;

.field private isTypeBoth:Z

.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mGrid:Landroid/widget/GridView;

.field private mIconSize:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private rList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rListLock:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LockScreenWallpaper;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/launcher2/LockScreenWallpaper;

    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LockScreenWallpaper;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/LockScreenWallpaper;

    iget-boolean v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0    # Lcom/android/launcher2/LockScreenWallpaper;

    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/LockScreenWallpaper;)I
    .locals 1
    .param p0    # Lcom/android/launcher2/LockScreenWallpaper;

    iget v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->mIconSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/LockScreenWallpaper;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0    # Lcom/android/launcher2/LockScreenWallpaper;

    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/LockScreenWallpaper;)[Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/launcher2/LockScreenWallpaper;

    iget-object v0, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;

    const/high16 v11, 0x10000

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    iput-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "both"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v9, :cond_0

    iput-boolean v9, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v5, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-boolean v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    if-nez v7, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.samsung.android.service.travel"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v0, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    iget-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v9, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "rListLock"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    new-instance v4, Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v4, p0}, Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/launcher2/LockScreenWallpaper;)V

    iget-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v7, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const v6, 0x1030347

    if-eqz v3, :cond_3

    const v6, 0x1030348

    :cond_3
    invoke-virtual {p0, v6}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->mIconSize:I

    new-instance v7, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;

    invoke-direct {v7, p0}, Lcom/android/launcher2/LockScreenWallpaper$WallpaperAdapter;-><init>(Lcom/android/launcher2/LockScreenWallpaper;)V

    iput-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x109011b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v7, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v8, 0x1020397

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/GridView;

    iput-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    iget-object v8, p0, Lcom/android/launcher2/LockScreenWallpaper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v7, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v7, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    new-instance v8, Lcom/android/launcher2/LockScreenWallpaper$ItemLongClickListener;

    invoke-direct {v8, p0}, Lcom/android/launcher2/LockScreenWallpaper$ItemLongClickListener;-><init>(Lcom/android/launcher2/LockScreenWallpaper;)V

    invoke-virtual {v7, v8}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->resizeGrid()V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x1

    const-string v4, "com.sec.android.gallery3d"

    iget-object v5, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v4, :cond_0

    const-string v4, "com.sec.android.gallery3d"

    const-string v5, "com.sec.android.gallery3d.app.BothScreen"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v4, "com.sec.android.gallery3d"

    const-string v5, "com.sec.android.gallery3d.app.LockScreen"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v4, "com.android.wallpaper.livepicker"

    iget-object v5, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.wallpaper.livepicker"

    const-string v6, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const-string v4, "com.samsung.android.service.travel"

    iget-object v5, p0, Lcom/android/launcher2/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.service.travel"

    const-string v6, "com.samsung.android.travel.TravelWallActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-boolean v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v4, :cond_4

    const-string v4, "SET_WALLPAPER_MODE"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.wallpaperchooser"

    const-string v6, "com.sec.android.app.wallpaperchooser.WallpaperChooser"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const-string v4, "SET_WALLPAPER_MODE"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onResume()V
    .locals 6

    const/high16 v4, 0x10000

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-boolean v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->isTypeBoth:Z

    if-nez v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.service.travel"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rListLock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/launcher2/LockScreenWallpaper;)V

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/launcher2/LockScreenWallpaper;->resizeGrid()V

    iget-object v3, p0, Lcom/android/launcher2/LockScreenWallpaper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method resizeGrid()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_0
    return-void
.end method
