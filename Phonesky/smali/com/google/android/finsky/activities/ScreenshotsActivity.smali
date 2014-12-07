.class public Lcom/google/android/finsky/activities/ScreenshotsActivity;
.super Landroid/app/Activity;
.source "ScreenshotsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;
    }
.end annotation


# instance fields
.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;II)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/ScreenshotsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "document"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "imageType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f04012a

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "document"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    iput-object v2, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const v2, 0x7f080234

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "imageType"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v4

    invoke-direct {v3, v1, p0, v4}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImagePagerAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/google/android/finsky/utils/BitmapLoader;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "index"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->finish()V

    :cond_1
    return-void
.end method
