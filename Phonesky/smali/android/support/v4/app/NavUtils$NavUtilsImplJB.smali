.class Landroid/support/v4/app/NavUtils$NavUtilsImplJB;
.super Landroid/support/v4/app/NavUtils$NavUtilsImplBase;
.source "NavUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NavUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavUtilsImplJB"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v4/app/NavUtilsJB;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
