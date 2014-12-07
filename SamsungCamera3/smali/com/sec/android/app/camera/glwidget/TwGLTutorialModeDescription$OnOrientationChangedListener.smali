.class Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;
.super Ljava/lang/Object;
.source "TwGLTutorialModeDescription.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnOrientationChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$1;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;
    .param p2    # Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$1;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription$OnOrientationChangedListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->mData:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTutorialModeDescription;->setDescription(Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;I)V

    :cond_0
    return-void
.end method
