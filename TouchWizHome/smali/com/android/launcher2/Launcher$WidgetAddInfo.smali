.class Lcom/android/launcher2/Launcher$WidgetAddInfo;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetAddInfo"
.end annotation


# instance fields
.field public mAllowDuplicate:Z

.field public mComponentName:Landroid/content/ComponentName;

.field public mSizeX:I

.field public mSizeY:I

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/launcher2/Launcher$WidgetAddInfo;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iput v0, p0, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$WidgetAddInfo;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method
