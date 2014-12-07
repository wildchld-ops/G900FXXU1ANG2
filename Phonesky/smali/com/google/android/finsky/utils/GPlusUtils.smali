.class public Lcom/google/android/finsky/utils/GPlusUtils;
.super Ljava/lang/Object;
.source "GPlusUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;,
        Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;,
        Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;
    }
.end annotation


# static fields
.field private static sIsCirclePickerActive:Z

.field private static sLastCirclePickerListener:Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;


# direct methods
.method static synthetic access$000(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/util/ArrayList;
    .param p3    # Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/utils/GPlusUtils;->launchCirclePicker(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/finsky/utils/GPlusUtils;->gaiaIdToPeopleQualifiedId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkGPlusAndLaunchCirclePicker(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;)V
    .locals 4
    .param p0    # Landroid/support/v4/app/FragmentActivity;
    .param p1    # Ljava/lang/String;
    .param p3    # Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;",
            "Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/utils/GPlusUtils$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/finsky/utils/GPlusUtils$1;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;)V

    new-instance v2, Lcom/google/android/finsky/utils/GPlusUtils$2;

    invoke-direct {v2}, Lcom/google/android/finsky/utils/GPlusUtils$2;-><init>()V

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/api/DfeApi;->getPlusProfile(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)Lcom/android/volley/Request;

    return-void
.end method

.method private static checkGooglePlayServices(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkGooglePlayServicesShowErrorDialogs(Landroid/app/Activity;)Z
    .locals 2
    .param p0    # Landroid/app/Activity;

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static circlePickerOnActivityResult(ILandroid/content/Intent;)V
    .locals 2
    .param p0    # I
    .param p1    # Landroid/content/Intent;

    sget-object v0, Lcom/google/android/finsky/utils/GPlusUtils;->sLastCirclePickerListener:Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/google/android/finsky/utils/GPlusUtils;->sLastCirclePickerListener:Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;

    invoke-static {p1}, Lcom/google/android/gms/common/audience/CircleSelectionIntent;->getSelectedCirclesFromResult(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;->onCirclesSelected(Ljava/util/ArrayList;)V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/utils/GPlusUtils;->sLastCirclePickerListener:Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/finsky/utils/GPlusUtils;->sIsCirclePickerActive:Z

    goto :goto_0
.end method

.method private static gaiaIdToPeopleQualifiedId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCircles(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;

    invoke-static {p0}, Lcom/google/android/finsky/utils/GPlusUtils;->checkGooglePlayServices(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;)V

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/GPlusUtils$CirclesLoader;->loadCircles()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/android/finsky/utils/GPlusUtils$3;

    invoke-direct {v2, p2}, Lcom/google/android/finsky/utils/GPlusUtils$3;-><init>(Lcom/google/android/finsky/utils/GPlusUtils$GetCirclesListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static getCirclesString(Ljava/util/List;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5
    .param p1    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f090359

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0e000c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static launchCirclePicker(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
    .param p1    # Ljava/lang/String;
    .param p3    # Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/people/data/AudienceMember;",
            ">;",
            "Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/finsky/utils/GPlusUtils;->checkGooglePlayServicesShowErrorDialogs(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/google/android/finsky/utils/GPlusUtils;->sIsCirclePickerActive:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/audience/CircleSelectionIntent;->getUpdateCirclesBuilder()Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;

    invoke-static {p1}, Lcom/google/android/finsky/utils/GPlusUtils;->gaiaIdToPeopleQualifiedId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;->setUpdatePersonId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;

    invoke-interface {v0, p2}, Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;->setInitialCircles(Ljava/util/ArrayList;)Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;->setClientApplicationId(Ljava/lang/String;)Lcom/google/android/gms/common/audience/CircleSelectionIntent$SelectBuilder;

    invoke-interface {v0}, Lcom/google/android/gms/common/audience/CircleSelectionIntent$UpdateBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    sput-object p3, Lcom/google/android/finsky/utils/GPlusUtils;->sLastCirclePickerListener:Lcom/google/android/finsky/utils/GPlusUtils$CirclePickerListener;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/finsky/utils/GPlusUtils;->sIsCirclePickerActive:Z

    :cond_0
    return-void
.end method

.method public static launchGPlusSignUp(Landroid/app/Activity;)V
    .locals 4
    .param p0    # Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/android/finsky/utils/GPlusUtils;->checkGooglePlayServicesShowErrorDialogs(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090374

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v3, v1}, Lcom/google/android/gms/common/oob/SignUp;->newSignUpIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
